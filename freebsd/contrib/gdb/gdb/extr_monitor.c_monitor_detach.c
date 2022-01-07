
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pop_target () ;
 int printf_unfiltered (char*,int ) ;
 int target_shortname ;

__attribute__((used)) static void
monitor_detach (char *args, int from_tty)
{
  pop_target ();
  if (from_tty)
    printf_unfiltered ("Ending remote %s debugging\n", target_shortname);
}
