
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gdb_has_a_terminal () ;
 int inferior_process_group ;
 scalar_t__ inferior_ttystate ;
 scalar_t__ serial_get_tty_state (int ) ;
 int stdin_serial ;
 int terminal_is_ours ;
 int xfree (scalar_t__) ;

void
terminal_init_inferior_with_pgrp (int pgrp)
{
  if (gdb_has_a_terminal ())
    {


      if (inferior_ttystate)
 xfree (inferior_ttystate);
      inferior_ttystate = serial_get_tty_state (stdin_serial);
      terminal_is_ours = 1;
    }
}
