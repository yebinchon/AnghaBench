
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_request_quit (int ) ;
 scalar_t__ immediate_quit ;
 int mark_async_signal_handler_wrapper (int ) ;
 int sigint_token ;
 int signal (int,void (*) (int)) ;

void
handle_sigint (int sig)
{
  signal (sig, handle_sigint);
  if (immediate_quit)
    async_request_quit (0);
  else


    mark_async_signal_handler_wrapper (sigint_token);
}
