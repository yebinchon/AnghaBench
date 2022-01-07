
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_implementation_revision; } ;


 scalar_t__ CANNOT_FETCH_REGISTER (int) ;
 int FP0_REGNUM ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int mips_regsize (int ) ;
 int supply_register (int,char*) ;

void
mipsnbsd_supply_fpreg (char *fpregs, int regno)
{
  int i;

  for (i = FP0_REGNUM;
       i <= mips_regnum (current_gdbarch)->fp_implementation_revision;
       i++)
    {
      if (regno == i || regno == -1)
 {
   if (CANNOT_FETCH_REGISTER (i))
     supply_register (i, ((void*)0));
   else
            supply_register (i, fpregs + ((i - FP0_REGNUM) * mips_regsize (current_gdbarch)));
 }
    }
}
