
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mark_async_signal_handler_wrapper (int ) ;
 int sigfpe_token ;
 int signal (int,void (*) (int)) ;

__attribute__((used)) static void
handle_sigfpe (int sig)
{
  mark_async_signal_handler_wrapper (sigfpe_token);
  signal (sig, handle_sigfpe);
}
