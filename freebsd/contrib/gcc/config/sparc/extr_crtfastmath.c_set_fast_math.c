
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FPRS_NS ;

__attribute__((used)) static void __attribute__((constructor))
set_fast_math (void)
{
  unsigned int fsr;






  __asm__("st %%fsr, %0"
   : "=m" (fsr));

  fsr |= FPRS_NS;

  __asm__("ld %0, %%fsr"
   : : "m" (fsr));
}
