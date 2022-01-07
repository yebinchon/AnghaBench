
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int br_aes_ct64_bitslice_Sbox (int*) ;

void
br_aes_ct64_bitslice_invSbox(uint64_t *q)
{




 uint64_t q0, q1, q2, q3, q4, q5, q6, q7;

 q0 = ~q[0];
 q1 = ~q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = ~q[5];
 q6 = ~q[6];
 q7 = q[7];
 q[7] = q1 ^ q4 ^ q6;
 q[6] = q0 ^ q3 ^ q5;
 q[5] = q7 ^ q2 ^ q4;
 q[4] = q6 ^ q1 ^ q3;
 q[3] = q5 ^ q0 ^ q2;
 q[2] = q4 ^ q7 ^ q1;
 q[1] = q3 ^ q6 ^ q0;
 q[0] = q2 ^ q5 ^ q7;

 br_aes_ct64_bitslice_Sbox(q);

 q0 = ~q[0];
 q1 = ~q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = ~q[5];
 q6 = ~q[6];
 q7 = q[7];
 q[7] = q1 ^ q4 ^ q6;
 q[6] = q0 ^ q3 ^ q5;
 q[5] = q7 ^ q2 ^ q4;
 q[4] = q6 ^ q1 ^ q3;
 q[3] = q5 ^ q0 ^ q2;
 q[2] = q4 ^ q7 ^ q1;
 q[1] = q3 ^ q6 ^ q0;
 q[0] = q2 ^ q5 ^ q7;
}
