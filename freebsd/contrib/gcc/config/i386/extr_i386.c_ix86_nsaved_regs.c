
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ ix86_save_reg (int,int) ;

__attribute__((used)) static int
ix86_nsaved_regs (void)
{
  int nregs = 0;
  int regno;

  for (regno = FIRST_PSEUDO_REGISTER - 1; regno >= 0; regno--)
    if (ix86_save_reg (regno, 1))
      nregs++;
  return nregs;
}
