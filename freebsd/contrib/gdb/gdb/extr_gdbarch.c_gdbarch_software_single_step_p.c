
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * software_single_step; } ;


 int gdb_assert (int ) ;

int
gdbarch_software_single_step_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->software_single_step != ((void*)0);
}
