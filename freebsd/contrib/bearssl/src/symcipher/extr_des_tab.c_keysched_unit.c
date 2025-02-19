
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* PC2left ;
 int* PC2right ;
 int br_des_keysched_unit (int*,void const*) ;

__attribute__((used)) static void
keysched_unit(uint32_t *skey, const void *key)
{
 int i;

 br_des_keysched_unit(skey, key);




 for (i = 0; i < 16; i ++) {
  uint32_t xl, xr, ul, ur;
  int j;

  xl = skey[(i << 1) + 0];
  xr = skey[(i << 1) + 1];
  ul = 0;
  ur = 0;
  for (j = 0; j < 28; j ++) {
   ul |= (xl & 1) << PC2left[j];
   ur |= (xr & 1) << PC2right[j];
   xl >>= 1;
   xr >>= 1;
  }
  skey[(i << 1) + 0] = ul;
  skey[(i << 1) + 1] = ur;
 }
}
