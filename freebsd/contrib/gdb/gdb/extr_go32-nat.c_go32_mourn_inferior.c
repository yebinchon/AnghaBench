
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int go32_kill_inferior () ;
 int i386_cleanup_dregs () ;

__attribute__((used)) static void
go32_mourn_inferior (void)
{







  i386_cleanup_dregs ();
  go32_kill_inferior ();
  generic_mourn_inferior ();
}
