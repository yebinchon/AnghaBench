
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {scalar_t__ deprecated_frame_args_address; } ;


 int gdb_assert (int ) ;
 scalar_t__ get_frame_base ;

int
gdbarch_deprecated_frame_args_address_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_frame_args_address != get_frame_base;
}
