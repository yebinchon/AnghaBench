
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int quit_confirm () ;
 int quit_force (char*,int) ;

void
quit_command (char *args, int from_tty)
{
  if (!quit_confirm ())
    error ("Not confirmed.");
  quit_force (args, from_tty);
}
