
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_init_frame_pc; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_init_frame_pc_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_init_frame_pc != ((void*)0);
}
