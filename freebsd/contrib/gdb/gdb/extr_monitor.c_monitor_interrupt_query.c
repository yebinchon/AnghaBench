
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_QUIT ;
 scalar_t__ query (char*) ;
 int target_mourn_inferior () ;
 int target_terminal_inferior () ;
 int target_terminal_ours () ;
 int throw_exception (int ) ;

__attribute__((used)) static void
monitor_interrupt_query (void)
{
  target_terminal_ours ();

  if (query ("Interrupted while waiting for the program.\nGive up (and stop debugging it)? "))

    {
      target_mourn_inferior ();
      throw_exception (RETURN_QUIT);
    }

  target_terminal_inferior ();
}
