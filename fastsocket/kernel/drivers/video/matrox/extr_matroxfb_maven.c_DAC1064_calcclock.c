
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int matroxfb_PLL_calcclock (int *,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int maven_pll ;

__attribute__((used)) static void DAC1064_calcclock(unsigned int freq, unsigned int fmax,
  unsigned int* in, unsigned int* feed, unsigned int* post) {
 unsigned int fvco;
 unsigned int p;

 fvco = matroxfb_PLL_calcclock(&maven_pll, freq, fmax, in, feed, &p);
 p = (1 << p) - 1;
 if (fvco <= 100000)
  ;
 else if (fvco <= 140000)
  p |= 0x08;
 else if (fvco <= 180000)
  p |= 0x10;
 else
  p |= 0x18;
 *post = p;
 return;
}
