
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * fetch_pointer_argument; } ;


 int gdb_assert (int ) ;

int
gdbarch_fetch_pointer_argument_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->fetch_pointer_argument != ((void*)0);
}
