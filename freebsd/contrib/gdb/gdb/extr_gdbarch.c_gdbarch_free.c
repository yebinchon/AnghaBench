
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obstack {int dummy; } ;
struct gdbarch {struct obstack* obstack; int initialized_p; } ;


 int gdb_assert (int) ;
 int obstack_free (struct obstack*,int ) ;
 int xfree (struct obstack*) ;

void
gdbarch_free (struct gdbarch *arch)
{
  struct obstack *obstack;
  gdb_assert (arch != ((void*)0));
  gdb_assert (!arch->initialized_p);
  obstack = arch->obstack;
  obstack_free (obstack, 0);
  xfree (obstack);
}
