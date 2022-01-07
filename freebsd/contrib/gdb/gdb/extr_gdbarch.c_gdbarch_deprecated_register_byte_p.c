
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {scalar_t__ deprecated_register_byte; } ;


 int gdb_assert (int ) ;
 scalar_t__ generic_register_byte ;

int
gdbarch_deprecated_register_byte_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_register_byte != generic_register_byte;
}
