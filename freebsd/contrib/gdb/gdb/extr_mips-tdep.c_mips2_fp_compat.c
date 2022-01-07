
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp0; } ;


 int PS_REGNUM ;
 int ST0_FR ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int read_register (int ) ;
 int register_size (int ,int ) ;

__attribute__((used)) static int
mips2_fp_compat (void)
{


  if (register_size (current_gdbarch, mips_regnum (current_gdbarch)->fp0) ==
      4)
    return 0;
  return 0;
}
