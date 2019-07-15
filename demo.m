x = [1/6; 1/2; 3/4; 1; 3; 10; 20; 30; 45; 60; 120; 180; 240];

y = [4.142091807;
    4.501013648;
    4.427724483;
    4.676015912;
    4.704718512;
    4.755157063;
    4.87526212;
    5.163124125;
    5.343142377;
    5.374352972;
    5.288523836;
    5.484147386;
    5.464640765
    ];

weight = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];

reg_k2 = 0;
reg_k3 = 0;

ntotal = 10;

[coffs, ks, D] = exp_fitting(x, y, ntotal, reg_k2, reg_k3, weight);

fprintf('k1=%f, k2=%f, k3=%f\n', ks(1), ks(2), ks(3));
fprintf('A=%f, B=%f, C=%f, D=%f\n', coffs(1), coffs(2), coffs(3), D);

