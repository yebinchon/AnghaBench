
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int si_int ;



si_int __clzsi2(si_int a) {
  su_int x = (su_int)a;
  si_int t = ((x & 0xFFFF0000) == 0) << 4;
  x >>= 16 - t;
  su_int r = t;

  t = ((x & 0xFF00) == 0) << 3;
  x >>= 8 - t;
  r += t;

  t = ((x & 0xF0) == 0) << 2;
  x >>= 4 - t;
  r += t;

  t = ((x & 0xC) == 0) << 1;
  x >>= 2 - t;
  r += t;
  return r + ((2 - x) & -((x & 2) == 0));
}
