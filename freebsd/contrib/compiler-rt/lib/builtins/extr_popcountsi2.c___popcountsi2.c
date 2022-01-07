
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int si_int ;



si_int __popcountsi2(si_int a) {
  su_int x = (su_int)a;
  x = x - ((x >> 1) & 0x55555555);

  x = ((x >> 2) & 0x33333333) + (x & 0x33333333);

  x = (x + (x >> 4)) & 0x0F0F0F0F;

  x = (x + (x >> 16));


  return (x + (x >> 8)) & 0x0000003F;
}
