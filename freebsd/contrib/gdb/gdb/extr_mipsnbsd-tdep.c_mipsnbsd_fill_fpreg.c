
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_control_status; } ;


 int CANNOT_STORE_REGISTER (int) ;
 int FP0_REGNUM ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int mips_regsize (int ) ;
 int regcache_collect (int,char*) ;

void
mipsnbsd_fill_fpreg (char *fpregs, int regno)
{
  int i;

  for (i = FP0_REGNUM; i <= mips_regnum (current_gdbarch)->fp_control_status;
       i++)
    if ((regno == i || regno == -1) && ! CANNOT_STORE_REGISTER (i))
      regcache_collect (i, fpregs + ((i - FP0_REGNUM) * mips_regsize (current_gdbarch)));
}
