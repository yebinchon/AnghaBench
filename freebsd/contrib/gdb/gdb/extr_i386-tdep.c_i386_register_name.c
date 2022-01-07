
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I387_MM0_REGNUM ;
 int current_gdbarch ;
 char const** i386_mmx_names ;
 scalar_t__ i386_mmx_regnum_p (int ,int) ;
 int i386_num_register_names ;
 char const** i386_register_names ;

const char *
i386_register_name (int reg)
{
  if (i386_mmx_regnum_p (current_gdbarch, reg))
    return i386_mmx_names[reg - I387_MM0_REGNUM];

  if (reg >= 0 && reg < i386_num_register_names)
    return i386_register_names[reg];

  return ((void*)0);
}
