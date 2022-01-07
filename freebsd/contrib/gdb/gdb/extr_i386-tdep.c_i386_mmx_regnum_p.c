
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch {int dummy; } ;
struct TYPE_2__ {int mm0_regnum; } ;


 TYPE_1__* gdbarch_tdep (struct gdbarch*) ;
 int i386_num_mmx_regs ;

__attribute__((used)) static int
i386_mmx_regnum_p (struct gdbarch *gdbarch, int regnum)
{
  int mm0_regnum = gdbarch_tdep (gdbarch)->mm0_regnum;

  if (mm0_regnum < 0)
    return 0;

  return (regnum >= mm0_regnum && regnum < mm0_regnum + i386_num_mmx_regs);
}
