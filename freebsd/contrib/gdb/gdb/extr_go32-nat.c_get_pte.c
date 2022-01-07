
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dos_ds ;
 unsigned long _farpeekl (int ,unsigned long) ;

__attribute__((used)) static unsigned long
get_pte (unsigned long pde, int n)
{
  unsigned long pte = 0;



  if ((pde & 1) && !(pde & 0x80) && n >= 0 && n < 1024)
    {
      pde &= ~0xfff;
      pte = _farpeekl (_dos_ds, pde + 4*n);
    }
  return pte;
}
