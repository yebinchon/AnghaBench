
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * print_float_info; } ;


 int gdb_assert (int ) ;

int
gdbarch_print_float_info_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->print_float_info != ((void*)0);
}
