
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_VIRTUAL_TYPE (int) ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int TYPE_LENGTH (int ) ;
 int current_gdbarch ;
 int gdb_assert (int) ;
 int gdbarch_register_type (int ,int) ;
 scalar_t__ gdbarch_register_type_p (int ) ;

int
generic_register_size (int regnum)
{
  gdb_assert (regnum >= 0 && regnum < NUM_REGS + NUM_PSEUDO_REGS);
  if (gdbarch_register_type_p (current_gdbarch))
    return TYPE_LENGTH (gdbarch_register_type (current_gdbarch, regnum));
  else



    return TYPE_LENGTH (DEPRECATED_REGISTER_VIRTUAL_TYPE (regnum));
}
