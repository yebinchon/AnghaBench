
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_register_convertible; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_register_convertible_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_register_convertible != ((void*)0);
}
