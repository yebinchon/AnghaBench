
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int si_int ;



si_int __ctzsi2(si_int a) {
  su_int x = (su_int)a;
  si_int t = ((x & 0x0000FFFF) == 0)
             << 4;
  x >>= t;
  su_int r = t;

  t = ((x & 0x00FF) == 0) << 3;
  x >>= t;
  r += t;

  t = ((x & 0x0F) == 0) << 2;
  x >>= t;
  r += t;

  t = ((x & 0x3) == 0) << 1;
  x >>= t;
  x &= 3;
  r += t;
  return r + ((2 - (x >> 1)) & -((x & 1) == 0));
}
