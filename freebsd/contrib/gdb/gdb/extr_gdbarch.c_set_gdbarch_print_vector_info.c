
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int print_vector_info; } ;
typedef int gdbarch_print_vector_info_ftype ;



void
set_gdbarch_print_vector_info (struct gdbarch *gdbarch,
                               gdbarch_print_vector_info_ftype print_vector_info)
{
  gdbarch->print_vector_info = print_vector_info;
}
