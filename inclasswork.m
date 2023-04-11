clear all; clc;%清除站存資料

syms phi theta psi %定義

phi_d = 15;theta_d = 25;psi_d = 20;

phi=phi_d*pi/180;   theta=theta_d*pi/180;   psi=psi_d*pi/180;

[R_zyz]=Euler_rot(phi, theta, psi);

theta_t=(180/pi)*(atan2(R_zyz(2,2),(1-(R_zyz(2,2))^2)^(1/2)));
theta_t2=(180/pi)*(atan2((1-(R_zyz(2,2))^2)^(1/2),R_zyz(2,2)));
