
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timer_t ;
struct sigevent {int sigev_signo; int sigev_notify; } ;
struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
typedef scalar_t__ dtrace_optval_t ;


 int CLOCK_REALTIME ;
 scalar_t__ NANOSEC ;
 int SIGEV_SIGNAL ;
 int SIGUSR1 ;
 int TIMER_RELTIME ;
 int dfail (char*) ;
 int dtrace_getopt (int ,char*,scalar_t__*) ;
 int g_dtp ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int status_fire ;
 int timer_create (int ,struct sigevent*,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

__attribute__((used)) static void
status_init(void)
{
 dtrace_optval_t val, status, agg;
 struct sigaction act;
 struct itimerspec ts;
 struct sigevent ev;
 timer_t tid;

 if (dtrace_getopt(g_dtp, "statusrate", &status) == -1)
  dfail("failed to get 'statusrate'");

 if (dtrace_getopt(g_dtp, "aggrate", &agg) == -1)
  dfail("failed to get 'statusrate'");
 val = status < agg ? status : agg;

 (void) sigemptyset(&act.sa_mask);
 act.sa_flags = 0;
 act.sa_handler = status_fire;
 (void) sigaction(SIGUSR1, &act, ((void*)0));

 ev.sigev_notify = SIGEV_SIGNAL;
 ev.sigev_signo = SIGUSR1;

 if (timer_create(CLOCK_REALTIME, &ev, &tid) == -1)
  dfail("cannot create CLOCK_REALTIME timer");

 ts.it_value.tv_sec = val / NANOSEC;
 ts.it_value.tv_nsec = val % NANOSEC;
 ts.it_interval = ts.it_value;

 if (timer_settime(tid, TIMER_RELTIME, &ts, ((void*)0)) == -1)
  dfail("cannot set time on CLOCK_REALTIME timer");
}
