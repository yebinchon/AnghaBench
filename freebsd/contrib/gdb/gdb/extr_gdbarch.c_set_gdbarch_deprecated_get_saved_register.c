
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_get_saved_register; } ;
typedef int gdbarch_deprecated_get_saved_register_ftype ;



void
set_gdbarch_deprecated_get_saved_register (struct gdbarch *gdbarch,
                                           gdbarch_deprecated_get_saved_register_ftype deprecated_get_saved_register)
{
  gdbarch->deprecated_get_saved_register = deprecated_get_saved_register;
}
