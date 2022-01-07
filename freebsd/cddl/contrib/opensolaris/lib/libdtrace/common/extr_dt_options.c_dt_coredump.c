
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
struct rlimit {void* rlim_max; void* rlim_cur; } ;
typedef int msg ;


 int RLIMIT_CORE ;
 void* RLIM_INFINITY ;
 int SIGABRT ;
 int SIG_DFL ;
 int STDERR_FILENO ;
 int abort () ;
 int setrlimit (int ,struct rlimit*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
dt_coredump(void)
{
 const char msg[] = "libdtrace DEBUG: [ forcing coredump ]\n";

 struct sigaction act;
 struct rlimit lim;

 (void) write(STDERR_FILENO, msg, sizeof (msg) - 1);

 act.sa_handler = SIG_DFL;
 act.sa_flags = 0;

 (void) sigemptyset(&act.sa_mask);
 (void) sigaction(SIGABRT, &act, ((void*)0));

 lim.rlim_cur = RLIM_INFINITY;
 lim.rlim_max = RLIM_INFINITY;

 (void) setrlimit(RLIMIT_CORE, &lim);
 abort();
}
