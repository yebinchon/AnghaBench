
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* z; int y; int x; } ;
typedef TYPE_1__ p256_jacobian ;


 int EQ (int,int ) ;
 int* F256 ;
 int MUL15 (int,int) ;
 int NEQ (unsigned char const,int) ;
 int* P256_B ;
 int be8_to_le13 (int*,unsigned char const*,int) ;
 int memcpy (int ,int*,int) ;
 int memset (int*,int ,int) ;
 int mul_f256 (int*,int*,int*) ;
 int norm13 (int*,int*,int) ;
 int reduce_f256 (int*) ;
 int reduce_final_f256 (int*) ;
 int square_f256 (int*,int*) ;

__attribute__((used)) static uint32_t
p256_decode(p256_jacobian *P, const void *src, size_t len)
{
 const unsigned char *buf;
 uint32_t tx[20], ty[20], t1[20], t2[20];
 uint32_t bad;
 int i;

 if (len != 65) {
  return 0;
 }
 buf = src;







 bad = NEQ(buf[0], 0x04);





 tx[19] = be8_to_le13(tx, buf + 1, 32);
 ty[19] = be8_to_le13(ty, buf + 33, 32);
 bad |= reduce_final_f256(tx);
 bad |= reduce_final_f256(ty);




 square_f256(t1, tx);
 mul_f256(t1, tx, t1);
 square_f256(t2, ty);
 for (i = 0; i < 20; i ++) {
  t1[i] += (F256[i] << 3) - MUL15(3, tx[i]) + P256_B[i] - t2[i];
 }
 norm13(t1, t1, 20);
 reduce_f256(t1);
 reduce_final_f256(t1);
 for (i = 0; i < 20; i ++) {
  bad |= t1[i];
 }




 memcpy(P->x, tx, sizeof tx);
 memcpy(P->y, ty, sizeof ty);
 memset(P->z, 0, sizeof P->z);
 P->z[0] = 1;
 return EQ(bad, 0);
}
