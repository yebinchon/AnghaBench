
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int si_int ;
typedef int du_int ;
typedef int di_int ;



si_int __popcountdi2(di_int a) {
  du_int x2 = (du_int)a;
  x2 = x2 - ((x2 >> 1) & 0x5555555555555555uLL);

  x2 = ((x2 >> 2) & 0x3333333333333333uLL) + (x2 & 0x3333333333333333uLL);

  x2 = (x2 + (x2 >> 4)) & 0x0F0F0F0F0F0F0F0FuLL;

  su_int x = (su_int)(x2 + (x2 >> 32));


  x = x + (x >> 16);


  return (x + (x >> 8)) & 0x0000007F;
}
