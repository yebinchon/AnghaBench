
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {scalar_t__ deprecated_max_register_raw_size; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_max_register_raw_size_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_max_register_raw_size != 0;
}
