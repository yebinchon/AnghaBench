
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_convertible; } ;
typedef int gdbarch_deprecated_register_convertible_ftype ;



void
set_gdbarch_deprecated_register_convertible (struct gdbarch *gdbarch,
                                             gdbarch_deprecated_register_convertible_ftype deprecated_register_convertible)
{
  gdbarch->deprecated_register_convertible = deprecated_register_convertible;
}
