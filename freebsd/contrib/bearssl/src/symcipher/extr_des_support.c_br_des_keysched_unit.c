
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_dec32be (unsigned char const*) ;
 int br_des_do_IP (int*,int*) ;

void
br_des_keysched_unit(uint32_t *skey, const void *key)
{
 uint32_t xl, xr, kl, kr;
 int i;

 xl = br_dec32be(key);
 xr = br_dec32be((const unsigned char *)key + 4);
 br_des_do_IP(&xl, &xr);
 kl = ((xr & (uint32_t)0xFF000000) >> 4)
  | ((xl & (uint32_t)0xFF000000) >> 12)
  | ((xr & (uint32_t)0x00FF0000) >> 12)
  | ((xl & (uint32_t)0x00FF0000) >> 20);
 kr = ((xr & (uint32_t)0x000000FF) << 20)
  | ((xl & (uint32_t)0x0000FF00) << 4)
  | ((xr & (uint32_t)0x0000FF00) >> 4)
  | ((xl & (uint32_t)0x000F0000) >> 16);





 for (i = 0; i < 16; i ++) {
  if ((1 << i) & 0x8103) {
   kl = (kl << 1) | (kl >> 27);
   kr = (kr << 1) | (kr >> 27);
  } else {
   kl = (kl << 2) | (kl >> 26);
   kr = (kr << 2) | (kr >> 26);
  }
  kl &= (uint32_t)0x0FFFFFFF;
  kr &= (uint32_t)0x0FFFFFFF;
  skey[(i << 1) + 0] = kl;
  skey[(i << 1) + 1] = kr;
 }
}
