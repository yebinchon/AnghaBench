
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * y; int * x; int * z; } ;
typedef TYPE_1__ p256_jacobian ;


 int add_f256 (int *,int *,int *) ;
 int mul_f256 (int *,int *,int *) ;
 int square_f256 (int *,int *) ;
 int sub_f256 (int *,int *,int *) ;

__attribute__((used)) static void
p256_double(p256_jacobian *Q)
{
 uint32_t t1[9], t2[9], t3[9], t4[9];




 square_f256(t1, Q->z);




 add_f256(t2, Q->x, t1);
 sub_f256(t1, Q->x, t1);




 mul_f256(t3, t1, t2);
 add_f256(t1, t3, t3);
 add_f256(t1, t3, t1);




 square_f256(t3, Q->y);
 add_f256(t3, t3, t3);
 mul_f256(t2, Q->x, t3);
 add_f256(t2, t2, t2);




 square_f256(Q->x, t1);
 sub_f256(Q->x, Q->x, t2);
 sub_f256(Q->x, Q->x, t2);




 mul_f256(t4, Q->y, Q->z);
 add_f256(Q->z, t4, t4);





 sub_f256(t2, t2, Q->x);
 mul_f256(Q->y, t1, t2);
 square_f256(t4, t3);
 add_f256(t4, t4, t4);
 sub_f256(Q->y, Q->y, t4);
}
