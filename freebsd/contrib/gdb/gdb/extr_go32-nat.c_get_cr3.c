
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtr_reg {unsigned int base; } ;


 int _dos_ds ;
 int _farnspeekl (unsigned long) ;
 int _farsetsel (int ) ;
 int pdbr ;

__attribute__((used)) static unsigned long
get_cr3 (void)
{
  unsigned offset;
  unsigned taskreg;
  unsigned long taskbase, cr3;
  struct dtr_reg gdtr;

  if (pdbr > 0 && pdbr <= 0xfffff)
    return pdbr;


  __asm__ __volatile__ ("sgdt   %0" : "=m" (gdtr) : );
  __asm__ __volatile__ ("str    %0" : "=m" (taskreg) : );






  offset = gdtr.base + (taskreg & 0xfff8) + 2;



  if (offset > 0xfffff)
    return 0;

  _farsetsel (_dos_ds);
  taskbase = _farnspeekl (offset) & 0xffffffU;
  taskbase += _farnspeekl (offset + 2) & 0xff000000U;
  if (taskbase > 0xfffff)
    return 0;



  cr3 = _farnspeekl (taskbase + 0x1c) & ~0xfff;
  if (cr3 > 0xfffff)
    {
      if (cr3 > 0xfffff)
 cr3 = 0;
    }

  return cr3;
}
