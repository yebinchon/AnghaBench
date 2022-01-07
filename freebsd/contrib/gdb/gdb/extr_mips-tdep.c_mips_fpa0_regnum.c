
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch {int dummy; } ;
struct TYPE_2__ {int fp0; } ;


 TYPE_1__* mips_regnum (struct gdbarch*) ;

__attribute__((used)) static int
mips_fpa0_regnum (struct gdbarch *gdbarch)
{
  return mips_regnum (gdbarch)->fp0 + 12;
}
