
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {scalar_t__ deprecated_pc_in_call_dummy; } ;


 int gdb_assert (int ) ;
 scalar_t__ generic_pc_in_call_dummy ;

int
gdbarch_deprecated_pc_in_call_dummy_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_pc_in_call_dummy != generic_pc_in_call_dummy;
}
