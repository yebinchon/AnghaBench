
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * sigtramp_end; } ;


 int gdb_assert (int ) ;

int
gdbarch_sigtramp_end_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->sigtramp_end != ((void*)0);
}
