
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_fix_call_dummy; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_fix_call_dummy_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_fix_call_dummy != ((void*)0);
}
