
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;


 int LOG_ERR ;
 scalar_t__ SA_RESTART ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int exit (int) ;
 int onhup ;
 int onterm ;
 int onusr1 ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
init_sigs(void)
{
 struct sigaction sa;

 sa.sa_handler = onusr1;
 sa.sa_flags = SA_RESTART;
 sigemptyset(&sa.sa_mask);
 if (sigaction(SIGUSR1, &sa, ((void*)0))) {
  syslog(LOG_ERR, "sigaction: %m");
  exit(1);
 }

 sa.sa_handler = onhup;
 if (sigaction(SIGHUP, &sa, ((void*)0))) {
  syslog(LOG_ERR, "sigaction: %m");
  exit(1);
 }

 sa.sa_handler = onterm;
 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 if (sigaction(SIGTERM, &sa, ((void*)0))) {
  syslog(LOG_ERR, "sigaction: %m");
  exit(1);
 }
 if (sigaction(SIGINT, &sa, ((void*)0))) {
  syslog(LOG_ERR, "sigaction: %m");
  exit(1);
 }
}
