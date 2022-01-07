
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* z; int y; int x; } ;
typedef TYPE_1__ p256_jacobian ;


 int EQ (int ,int ) ;
 int NEQ (unsigned char const,int) ;
 int P256_B ;
 int add_f256 (int *,int *,int ) ;
 int be8_to_le30 (int *,unsigned char const*,int) ;
 int memcpy (int ,int *,int) ;
 int memset (int*,int ,int) ;
 int mul_f256 (int *,int *,int *) ;
 int reduce_final_f256 (int *) ;
 int square_f256 (int *,int *) ;
 int sub_f256 (int *,int *,int *) ;

__attribute__((used)) static uint32_t
p256_decode(p256_jacobian *P, const void *src, size_t len)
{
 const unsigned char *buf;
 uint32_t tx[9], ty[9], t1[9], t2[9];
 uint32_t bad;
 int i;

 if (len != 65) {
  return 0;
 }
 buf = src;







 bad = NEQ(buf[0], 0x04);





 tx[8] = be8_to_le30(tx, buf + 1, 32);
 ty[8] = be8_to_le30(ty, buf + 33, 32);
 bad |= reduce_final_f256(tx);
 bad |= reduce_final_f256(ty);




 square_f256(t1, tx);
 mul_f256(t1, tx, t1);
 square_f256(t2, ty);
 sub_f256(t1, t1, tx);
 sub_f256(t1, t1, tx);
 sub_f256(t1, t1, tx);
 add_f256(t1, t1, P256_B);
 sub_f256(t1, t1, t2);
 reduce_final_f256(t1);
 for (i = 0; i < 9; i ++) {
  bad |= t1[i];
 }




 memcpy(P->x, tx, sizeof tx);
 memcpy(P->y, ty, sizeof ty);
 memset(P->z, 0, sizeof P->z);
 P->z[0] = 1;
 return EQ(bad, 0);
}
