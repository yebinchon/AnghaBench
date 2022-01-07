
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int pcxhr_pll_freq_register(unsigned int freq, unsigned int* pllreg,
       unsigned int* realfreq)
{
 unsigned int reg;

 if (freq < 6900 || freq > 110000)
  return -EINVAL;
 reg = (28224000 * 2) / freq;
 reg = (reg - 1) / 2;
 if (reg < 0x200)
  *pllreg = reg + 0x800;
 else if (reg < 0x400)
  *pllreg = reg & 0x1ff;
 else if (reg < 0x800) {
  *pllreg = ((reg >> 1) & 0x1ff) + 0x200;
  reg &= ~1;
 } else {
  *pllreg = ((reg >> 2) & 0x1ff) + 0x400;
  reg &= ~3;
 }
 if (realfreq)
  *realfreq = (28224000 / (reg + 1));
 return 0;
}
