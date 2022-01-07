
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_frame_chain; } ;


 int gdb_assert (int ) ;

int
gdbarch_deprecated_frame_chain_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->deprecated_frame_chain != ((void*)0);
}
