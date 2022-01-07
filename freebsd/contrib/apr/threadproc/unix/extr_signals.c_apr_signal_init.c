
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int APR_NUMSIG ;
 int SIGABRT ;
 int SIGALRM ;
 int SIGBUS ;
 int SIGCHLD ;
 int SIGCLD ;
 int SIGCONT ;
 int SIGEMT ;
 int SIGFPE ;
 int SIGHUP ;
 int SIGILL ;
 int SIGINT ;
 int SIGIO ;
 int SIGIOT ;
 int SIGKILL ;
 int SIGPIPE ;
 int SIGPOLL ;
 int SIGPROF ;
 int SIGPWR ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGSTOP ;
 int SIGSYS ;
 int SIGTERM ;
 int SIGTRAP ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIGURG ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGVTALRM ;
 int SIGWINCH ;
 int SIGXCPU ;
 int SIGXFSZ ;
 int * apr_psprintf (int *,char*,int) ;
 int ** signal_description ;
 int store_desc (int ,char*) ;

void apr_signal_init(apr_pool_t *pglobal)
{
    int sig;

    store_desc(0, "Signal 0");
    for (sig = 0; sig < APR_NUMSIG; ++sig)
        if (signal_description[sig] == ((void*)0))
            signal_description[sig] = apr_psprintf(pglobal, "signal #%d", sig);
}
