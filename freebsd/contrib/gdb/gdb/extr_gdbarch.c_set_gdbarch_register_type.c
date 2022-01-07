
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int register_type; } ;
typedef int gdbarch_register_type_ftype ;



void
set_gdbarch_register_type (struct gdbarch *gdbarch,
                           gdbarch_register_type_ftype register_type)
{
  gdbarch->register_type = register_type;
}
