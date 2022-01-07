
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_reg_struct_has_addr; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_reg_struct_has_addr_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_reg_struct_has_addr != ((void*)0);
}
