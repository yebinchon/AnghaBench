
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCOPY (int,int*,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static uint32_t
reduce_final_f255(uint32_t *d)
{
 uint32_t t[20];
 uint32_t cc;
 int i;

 memcpy(t, d, sizeof t);
 cc = 19;
 for (i = 0; i < 20; i ++) {
  uint32_t w;

  w = t[i] + cc;
  cc = w >> 13;
  t[i] = w & 0x1FFF;
 }
 cc = t[19] >> 8;
 t[19] &= 0xFF;
 CCOPY(cc, d, t, sizeof t);
 return cc;
}
