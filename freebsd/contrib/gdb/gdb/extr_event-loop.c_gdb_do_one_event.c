
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gdb_wait_for_event () ;
 int poll_timers () ;
 scalar_t__ process_event () ;

int
gdb_do_one_event (void *data)
{

  if (process_event ())
    {
      return 1;
    }


  poll_timers ();






  if (gdb_wait_for_event () < 0)
    {
      return -1;
    }


  if (process_event ())
    {
      return 1;
    }



  return 1;
}
