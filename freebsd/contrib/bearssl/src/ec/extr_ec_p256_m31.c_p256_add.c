
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* z; int* x; int* y; } ;
typedef TYPE_1__ p256_jacobian ;


 int mul_f256 (int*,int*,int*) ;
 int reduce_final_f256 (int*) ;
 int square_f256 (int*,int*) ;
 int sub_f256 (int*,int*,int*) ;

__attribute__((used)) static uint32_t
p256_add(p256_jacobian *P1, const p256_jacobian *P2)
{
 uint32_t t1[9], t2[9], t3[9], t4[9], t5[9], t6[9], t7[9];
 uint32_t ret;
 int i;




 square_f256(t3, P2->z);
 mul_f256(t1, P1->x, t3);
 mul_f256(t4, P2->z, t3);
 mul_f256(t3, P1->y, t4);




 square_f256(t4, P1->z);
 mul_f256(t2, P2->x, t4);
 mul_f256(t5, P1->z, t4);
 mul_f256(t4, P2->y, t5);






 sub_f256(t2, t2, t1);
 sub_f256(t4, t4, t3);
 reduce_final_f256(t4);
 ret = 0;
 for (i = 0; i < 9; i ++) {
  ret |= t4[i];
 }
 ret = (ret | -ret) >> 31;




 square_f256(t7, t2);
 mul_f256(t6, t1, t7);
 mul_f256(t5, t7, t2);




 square_f256(P1->x, t4);
 sub_f256(P1->x, P1->x, t5);
 sub_f256(P1->x, P1->x, t6);
 sub_f256(P1->x, P1->x, t6);




 sub_f256(t6, t6, P1->x);
 mul_f256(P1->y, t4, t6);
 mul_f256(t1, t5, t3);
 sub_f256(P1->y, P1->y, t1);




 mul_f256(t1, P1->z, P2->z);
 mul_f256(P1->z, t1, t2);

 return ret;
}
