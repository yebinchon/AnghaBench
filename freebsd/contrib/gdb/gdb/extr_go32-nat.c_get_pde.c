
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dos_ds ;
 unsigned long _farpeekl (int ,scalar_t__) ;
 scalar_t__ pdbr ;

__attribute__((used)) static unsigned long
get_pde (int n)
{
  unsigned long pde = 0;

  if (pdbr && n >= 0 && n < 1024)
    {
      pde = _farpeekl (_dos_ds, pdbr + 4*n);
    }
  return pde;
}
