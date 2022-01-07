
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FP0_REGNUM ;
 int i387_fill_fsave (char*,int) ;
 int npx ;
 int store_register (unsigned int) ;

__attribute__((used)) static void
go32_store_registers (int regno)
{
  unsigned r;

  if (regno >= 0)
    store_register (regno);
  else
    {
      for (r = 0; r < FP0_REGNUM; r++)
 store_register (r);
      i387_fill_fsave ((char *) &npx, -1);
    }
}
