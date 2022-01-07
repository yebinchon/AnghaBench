
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_push_arguments; } ;
typedef int gdbarch_deprecated_push_arguments_ftype ;



void
set_gdbarch_deprecated_push_arguments (struct gdbarch *gdbarch,
                                       gdbarch_deprecated_push_arguments_ftype deprecated_push_arguments)
{
  gdbarch->deprecated_push_arguments = deprecated_push_arguments;
}
