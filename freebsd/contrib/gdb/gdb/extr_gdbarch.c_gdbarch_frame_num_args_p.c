
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * frame_num_args; } ;


 int gdb_assert (int ) ;

int
gdbarch_frame_num_args_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->frame_num_args != ((void*)0);
}
