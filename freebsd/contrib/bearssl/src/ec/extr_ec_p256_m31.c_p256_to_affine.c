
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * z; int * y; int * x; } ;
typedef TYPE_1__ p256_jacobian ;


 int memcpy (int *,int *,int) ;
 int mul_f256 (int *,int *,int *) ;
 int reduce_final_f256 (int *) ;
 int square_f256 (int *,int *) ;

__attribute__((used)) static void
p256_to_affine(p256_jacobian *P)
{
 uint32_t t1[9], t2[9];
 int i;
 memcpy(t1, P->z, sizeof P->z);
 for (i = 0; i < 30; i ++) {
  square_f256(t1, t1);
  mul_f256(t1, t1, P->z);
 }






 memcpy(t2, P->z, sizeof P->z);
 for (i = 1; i < 256; i ++) {
  square_f256(t2, t2);
  switch (i) {
  case 31:
  case 190:
  case 221:
  case 252:
   mul_f256(t2, t2, t1);
   break;
  case 63:
  case 253:
  case 255:
   mul_f256(t2, t2, P->z);
   break;
  }
 }




 mul_f256(t1, t2, t2);
 mul_f256(P->x, t1, P->x);
 mul_f256(t1, t1, t2);
 mul_f256(P->y, t1, P->y);
 reduce_final_f256(P->x);
 reduce_final_f256(P->y);





 mul_f256(P->z, P->z, t2);
 reduce_final_f256(P->z);
}
