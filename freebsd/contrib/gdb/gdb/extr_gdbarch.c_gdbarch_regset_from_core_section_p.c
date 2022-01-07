
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * regset_from_core_section; } ;


 int gdb_assert (int ) ;

int
gdbarch_regset_from_core_section_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->regset_from_core_section != ((void*)0);
}
