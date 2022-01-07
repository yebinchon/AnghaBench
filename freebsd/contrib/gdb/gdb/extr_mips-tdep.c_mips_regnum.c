
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_regnum {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {struct mips_regnum const* regnum; } ;


 TYPE_1__* gdbarch_tdep (struct gdbarch*) ;

const struct mips_regnum *
mips_regnum (struct gdbarch *gdbarch)
{
  return gdbarch_tdep (gdbarch)->regnum;
}
