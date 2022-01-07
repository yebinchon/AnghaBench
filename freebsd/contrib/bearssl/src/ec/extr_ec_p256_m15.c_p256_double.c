
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* z; int* x; int* y; } ;
typedef TYPE_1__ p256_jacobian ;


 int* F256 ;
 int MUL15 (int,int) ;
 int mul_f256 (int*,int*,int*) ;
 int norm13 (int*,int*,int) ;
 int reduce_f256 (int*) ;
 int square_f256 (int*,int*) ;

__attribute__((used)) static void
p256_double(p256_jacobian *Q)
{
 uint32_t t1[20], t2[20], t3[20], t4[20];
 int i;




 square_f256(t1, Q->z);




 for (i = 0; i < 20; i ++) {
  t2[i] = (F256[i] << 1) + Q->x[i] - t1[i];
  t1[i] += Q->x[i];
 }
 norm13(t1, t1, 20);
 norm13(t2, t2, 20);




 mul_f256(t3, t1, t2);
 for (i = 0; i < 20; i ++) {
  t1[i] = MUL15(3, t3[i]);
 }
 norm13(t1, t1, 20);




 square_f256(t3, Q->y);
 for (i = 0; i < 20; i ++) {
  t3[i] <<= 1;
 }
 norm13(t3, t3, 20);
 mul_f256(t2, Q->x, t3);
 for (i = 0; i < 20; i ++) {
  t2[i] <<= 1;
 }
 norm13(t2, t2, 20);
 reduce_f256(t2);




 square_f256(Q->x, t1);
 for (i = 0; i < 20; i ++) {
  Q->x[i] += (F256[i] << 2) - (t2[i] << 1);
 }
 norm13(Q->x, Q->x, 20);
 reduce_f256(Q->x);




 mul_f256(t4, Q->y, Q->z);
 for (i = 0; i < 20; i ++) {
  Q->z[i] = t4[i] << 1;
 }
 norm13(Q->z, Q->z, 20);
 reduce_f256(Q->z);





 for (i = 0; i < 20; i ++) {
  t2[i] += (F256[i] << 1) - Q->x[i];
 }
 norm13(t2, t2, 20);
 mul_f256(Q->y, t1, t2);
 square_f256(t4, t3);
 for (i = 0; i < 20; i ++) {
  Q->y[i] += (F256[i] << 2) - (t4[i] << 1);
 }
 norm13(Q->y, Q->y, 20);
 reduce_f256(Q->y);
}
