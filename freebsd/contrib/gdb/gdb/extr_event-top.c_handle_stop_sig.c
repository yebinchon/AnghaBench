
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mark_async_signal_handler_wrapper (int ) ;
 int signal (int,void (*) (int)) ;
 int sigtstp_token ;

void
handle_stop_sig (int sig)
{
  mark_async_signal_handler_wrapper (sigtstp_token);
  signal (sig, handle_stop_sig);
}
