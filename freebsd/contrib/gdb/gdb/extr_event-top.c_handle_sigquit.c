
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mark_async_signal_handler_wrapper (int ) ;
 int signal (int,void (*) (int)) ;
 int sigquit_token ;

__attribute__((used)) static void
handle_sigquit (int sig)
{
  mark_async_signal_handler_wrapper (sigquit_token);
  signal (sig, handle_sigquit);
}
