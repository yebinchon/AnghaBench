
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gdb_has_a_terminal () ;
 scalar_t__ our_ttystate ;
 scalar_t__ serial_get_tty_state (int ) ;
 int stdin_serial ;
 int xfree (scalar_t__) ;

void
terminal_save_ours (void)
{
  if (gdb_has_a_terminal ())
    {


      if (our_ttystate)
        xfree (our_ttystate);
      our_ttystate = serial_get_tty_state (stdin_serial);
    }
}
