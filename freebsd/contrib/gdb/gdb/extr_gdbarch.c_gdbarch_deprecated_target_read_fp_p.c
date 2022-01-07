
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_target_read_fp; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_target_read_fp_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_target_read_fp != ((void*)0);
}
