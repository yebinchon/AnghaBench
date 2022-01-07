
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTTOU ;
 void SIG_IGN () ;
 int TIOCGPGRP ;
 int TIOCSPGRP ;
 int errno ;
 void* fcntl (int ,int ,int ) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 scalar_t__ gdb_has_a_terminal () ;
 int gdb_stderr ;
 int getpgrp () ;
 int inferior_process_group ;
 scalar_t__ inferior_thisrun_terminal ;
 scalar_t__ inferior_ttystate ;
 int ioctl (int ,int ,int *) ;
 scalar_t__ job_control ;
 int our_process_group ;
 int our_ttystate ;
 int safe_strerror (int ) ;
 scalar_t__ serial_get_tty_state (int ) ;
 int serial_noflush_set_tty_state (int ,int ,scalar_t__) ;
 void sigint_ours () ;
 scalar_t__ signal (int ,void (*) ()) ;
 void sigquit_ours () ;
 int stdin_serial ;
 int tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int ) ;
 int terminal_is_ours ;
 void* tflags_inferior ;
 int tflags_ours ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
terminal_ours_1 (int output_only)
{




  if (inferior_thisrun_terminal != 0 || gdb_has_a_terminal () == 0)
    return;

  if (!terminal_is_ours)
    {





      int result;

      terminal_is_ours = 1;






      if (inferior_ttystate)
 xfree (inferior_ttystate);
      inferior_ttystate = serial_get_tty_state (stdin_serial);
      serial_noflush_set_tty_state (stdin_serial, our_ttystate,
        inferior_ttystate);

      if (job_control)
 {
 }






      if (!job_control)
 {
   signal (SIGINT, sigint_ours);



 }
      result = result;
    }
}
