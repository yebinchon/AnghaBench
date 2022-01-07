
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_store_struct_return; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_store_struct_return_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_store_struct_return != ((void*)0);
}
