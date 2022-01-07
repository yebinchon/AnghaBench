
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int (* to_open ) (char*,int) ;int (* to_detach ) (char*,int) ;} ;


 int dont_repeat () ;
 int error (char*) ;
 struct target_ops* find_core_target () ;
 int stub1 (char*,int) ;
 int stub2 (char*,int) ;

void
core_file_command (char *filename, int from_tty)
{
  struct target_ops *t;

  dont_repeat ();

  t = find_core_target ();
  if (t == ((void*)0))
    error ("GDB can't read core files on this machine.");

  if (!filename)
    (t->to_detach) (filename, from_tty);
  else
    (t->to_open) (filename, from_tty);
}
