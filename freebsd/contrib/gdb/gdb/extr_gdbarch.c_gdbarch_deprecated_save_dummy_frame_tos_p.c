
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_save_dummy_frame_tos; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_save_dummy_frame_tos_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_save_dummy_frame_tos != ((void*)0);
}
