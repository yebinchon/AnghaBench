
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int return_value; } ;
typedef int gdbarch_return_value_ftype ;



void
set_gdbarch_return_value (struct gdbarch *gdbarch,
                          gdbarch_return_value_ftype return_value)
{
  gdbarch->return_value = return_value;
}
