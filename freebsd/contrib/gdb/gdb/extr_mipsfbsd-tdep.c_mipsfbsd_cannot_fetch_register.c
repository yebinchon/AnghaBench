
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_implementation_revision; } ;


 int ZERO_REGNUM ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;

__attribute__((used)) static int
mipsfbsd_cannot_fetch_register (int regno)
{
  return (regno == ZERO_REGNUM
   || regno == mips_regnum (current_gdbarch)->fp_implementation_revision);

}
