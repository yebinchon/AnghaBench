
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int TIOCGPGRP ;
 int fcntl (int ,int ,int ) ;
 int gdb_has_a_terminal_flag ;
 int getpgrp () ;

 int ioctl (int ,int ,int *) ;

 int our_process_group ;
 int * our_ttystate ;
 int * serial_fdopen (int ) ;
 int * serial_get_tty_state (int *) ;
 int * stdin_serial ;
 int tcgetpgrp (int ) ;
 int tflags_ours ;


int
gdb_has_a_terminal (void)
{
  switch (gdb_has_a_terminal_flag)
    {
    case 128:
      return 1;
    case 129:
      return 0;
    case 130:
      gdb_has_a_terminal_flag = 129;
      stdin_serial = serial_fdopen (0);
      if (stdin_serial != ((void*)0))
 {
   our_ttystate = serial_get_tty_state (stdin_serial);

   if (our_ttystate != ((void*)0))
     {
       gdb_has_a_terminal_flag = 128;
     }
 }

      return gdb_has_a_terminal_flag == 128;
    default:

      return 0;
    }
}
