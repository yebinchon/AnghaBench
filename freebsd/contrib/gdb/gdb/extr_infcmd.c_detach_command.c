
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLIB_RESTART () ;
 int detach_hook () ;
 int dont_repeat () ;
 int target_detach (char*,int) ;

__attribute__((used)) static void
detach_command (char *args, int from_tty)
{
  dont_repeat ();
  target_detach (args, from_tty);



  if (detach_hook)
    detach_hook ();
}
