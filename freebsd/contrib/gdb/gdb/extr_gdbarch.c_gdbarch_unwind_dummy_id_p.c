
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * unwind_dummy_id; } ;


 int gdb_assert (int ) ;

int
gdbarch_unwind_dummy_id_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->unwind_dummy_id != ((void*)0);
}
