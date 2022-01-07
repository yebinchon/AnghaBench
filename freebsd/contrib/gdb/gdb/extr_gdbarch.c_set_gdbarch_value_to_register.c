
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int value_to_register; } ;
typedef int gdbarch_value_to_register_ftype ;



void
set_gdbarch_value_to_register (struct gdbarch *gdbarch,
                               gdbarch_value_to_register_ftype value_to_register)
{
  gdbarch->value_to_register = value_to_register;
}
