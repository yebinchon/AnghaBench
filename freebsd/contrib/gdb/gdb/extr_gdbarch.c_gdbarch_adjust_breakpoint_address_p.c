
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * adjust_breakpoint_address; } ;


 int gdb_assert (int ) ;

int
gdbarch_adjust_breakpoint_address_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->adjust_breakpoint_address != ((void*)0);
}
