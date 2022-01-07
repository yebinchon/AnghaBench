
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timer_t ;
struct sigevent {int sigev_signo; int sigev_notify; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct itimerspec {TYPE_2__ it_interval; TYPE_1__ it_value; } ;
typedef int sigset_t ;


 int CLOCK_REALTIME ;
 int EXIT_FAILURE ;
 int NANOSEC ;
 int SIGEV_SIGNAL ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int TIMER_RELTIME ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigwait (int *,int*) ;
 int stderr ;
 char* strerror (int ) ;
 int timer_create (int ,struct sigevent*,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

int
main(int argc, char **argv)
{
 struct sigevent ev;
 struct itimerspec ts;
 sigset_t set;
 timer_t tid;
 char *cmd = argv[0];
 int sig;

 ev.sigev_notify = SIGEV_SIGNAL;
 ev.sigev_signo = SIGUSR1;

 if (timer_create(CLOCK_REALTIME, &ev, &tid) == -1) {
  (void) fprintf(stderr, "%s: cannot create CLOCK_HIGHRES "
      "timer: %s\n", cmd, strerror(errno));
  exit(EXIT_FAILURE);
 }

 (void) sigemptyset(&set);
 (void) sigaddset(&set, SIGUSR1);
 (void) sigprocmask(SIG_BLOCK, &set, ((void*)0));

 ts.it_value.tv_sec = 1;
 ts.it_value.tv_nsec = 0;
 ts.it_interval.tv_sec = 0;
 ts.it_interval.tv_nsec = NANOSEC / 2;

 if (timer_settime(tid, TIMER_RELTIME, &ts, ((void*)0)) == -1) {
  (void) fprintf(stderr, "%s: timer_settime() failed: %s\n",
      cmd, strerror(errno));
  exit(EXIT_FAILURE);
 }

 do {
  (void) sigwait(&set, &sig);
 } while(sig != SIGUSR1);


 return (0);
}
