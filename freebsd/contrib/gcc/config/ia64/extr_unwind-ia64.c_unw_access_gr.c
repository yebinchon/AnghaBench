
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int off; int type; } ;
struct unw_ireg {unsigned long* loc; TYPE_1__ nat; } ;
struct _Unwind_Context {unsigned long regstk_top; unsigned long rnat; scalar_t__ bsp; struct unw_ireg* ireg; } ;






 int abort () ;
 unsigned long* ia64_rse_rnat_addr (unsigned long*) ;
 unsigned long* ia64_rse_skip_regs (unsigned long*,int) ;
 unsigned long ia64_rse_slot_num (unsigned long*) ;

__attribute__((used)) static void
unw_access_gr (struct _Unwind_Context *info, int regnum,
        unsigned long *val, char *nat, int write)
{
  unsigned long *addr, *nat_addr = 0, nat_mask = 0, dummy_nat;
  struct unw_ireg *ireg;

  if ((unsigned) regnum - 1 >= 127)
    abort ();

  if (regnum < 1)
    {
      nat_addr = addr = &dummy_nat;
      dummy_nat = 0;
    }
  else if (regnum < 32)
    {

      ireg = &info->ireg[regnum - 2];
      addr = ireg->loc;
      if (addr)
 {
   nat_addr = addr + ireg->nat.off;
   switch (ireg->nat.type)
     {
     case 128:

       if (write)
  {
    if (*nat)
      {

        addr[0] = 0;
        addr[1] = 0x1fffe;
        return;
      }
    addr[1] = 0x1003e;
  }
       else if (addr[0] == 0 && addr[1] == 0x1ffe)
  {

    *val = 0;
    *nat = 1;
    return;
  }


     case 130:
       dummy_nat = 0;
       nat_addr = &dummy_nat;
       break;

     case 131:
       nat_mask = 1UL << ((long) addr & 0x1f8)/8;
       break;

     case 129:
       if ((unsigned long) addr >= info->regstk_top)
  nat_addr = &info->rnat;
       else
  nat_addr = ia64_rse_rnat_addr (addr);
       nat_mask = 1UL << ia64_rse_slot_num (addr);
       break;
     }
 }
    }
  else
    {

      addr = ia64_rse_skip_regs ((unsigned long *) info->bsp, regnum - 32);
      if ((unsigned long) addr >= info->regstk_top)
 nat_addr = &info->rnat;
      else
 nat_addr = ia64_rse_rnat_addr (addr);
      nat_mask = 1UL << ia64_rse_slot_num (addr);
    }

  if (write)
    {
      *addr = *val;
      if (*nat)
 *nat_addr |= nat_mask;
      else
 *nat_addr &= ~nat_mask;
    }
  else
    {
      *val = *addr;
      *nat = (*nat_addr & nat_mask) != 0;
    }
}
