
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int construct_inferior_arguments; } ;
typedef int gdbarch_construct_inferior_arguments_ftype ;



void
set_gdbarch_construct_inferior_arguments (struct gdbarch *gdbarch,
                                          gdbarch_construct_inferior_arguments_ftype construct_inferior_arguments)
{
  gdbarch->construct_inferior_arguments = construct_inferior_arguments;
}
