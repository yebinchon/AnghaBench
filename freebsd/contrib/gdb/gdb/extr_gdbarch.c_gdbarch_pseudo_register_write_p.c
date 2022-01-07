
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * pseudo_register_write; } ;


 int gdb_assert (int ) ;

int
gdbarch_pseudo_register_write_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->pseudo_register_write != ((void*)0);
}
