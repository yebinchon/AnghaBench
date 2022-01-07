
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 scalar_t__ event_loop_p ;
 scalar_t__ target_can_async_p () ;
 int target_stop () ;

void
interrupt_target_command (char *args, int from_tty)
{
  if (event_loop_p && target_can_async_p ())
    {
      dont_repeat ();
      target_stop ();
    }
}
