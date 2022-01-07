
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTRAP ;
 int SIGWINCH ;
 int SIGWINCH_HANDLER ;
 int SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int async_disconnect ;
 int async_do_nothing ;
 int async_float_handler ;
 int async_request_quit ;
 int async_stop_sig ;
 void* create_async_signal_handler (int ,int *) ;
 int handle_sigfpe ;
 int handle_sighup ;
 int handle_sigint ;
 int handle_sigquit ;
 int handle_sigwinch ;
 void* sigfpe_token ;
 void* sighup_token ;
 void* sigint_token ;
 scalar_t__ signal (int ,int ) ;
 void* sigquit_token ;
 void* sigtstp_token ;
 void* sigwinch_token ;

void
async_init_signals (void)
{
  signal (SIGINT, handle_sigint);
  sigint_token =
    create_async_signal_handler (async_request_quit, ((void*)0));
  signal (SIGQUIT, handle_sigquit);
  sigquit_token =
    create_async_signal_handler (async_do_nothing, ((void*)0));
  signal (SIGFPE, handle_sigfpe);
  sigfpe_token =
    create_async_signal_handler (async_float_handler, ((void*)0));
}
