
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* QL0 ;
 int* QL1 ;
 int* QR0 ;
 int* QR1 ;
 int br_des_keysched_unit (int*,void const*) ;
 int kl ;
 int kr ;
 int rotl (int,int) ;
 int sk0 ;
 int sk1 ;

__attribute__((used)) static void
keysched_unit(uint32_t *skey, const void *key)
{
 int i;

 br_des_keysched_unit(skey, key);




 for (i = 0; i < 16; i ++) {
  uint32_t kl, kr, sk0, sk1;
  int j;

  kl = skey[(i << 1) + 0];
  kr = skey[(i << 1) + 1];
  sk0 = 0;
  sk1 = 0;
  for (j = 0; j < 16; j ++) {
   sk0 <<= 1;
   sk1 <<= 1;
   sk0 |= ((kl >> QL0[j]) & (uint32_t)1) << 16;
   sk0 |= (kr >> QR0[j]) & (uint32_t)1;
   sk1 |= ((kl >> QL1[j]) & (uint32_t)1) << 16;
   sk1 |= (kr >> QR1[j]) & (uint32_t)1;
  }

  skey[(i << 1) + 0] = sk0;
  skey[(i << 1) + 1] = sk1;
 }
}
