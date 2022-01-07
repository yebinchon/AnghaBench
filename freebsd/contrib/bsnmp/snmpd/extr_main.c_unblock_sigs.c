
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int SIG_SETMASK ;
 int blocked_sigs ;
 int exit (int) ;
 int sigprocmask (int ,int *,int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
unblock_sigs(void)
{
 if (sigprocmask(SIG_SETMASK, &blocked_sigs, ((void*)0)) == -1) {
  syslog(LOG_ERR, "SIG_SETMASK: %m");
  exit(1);
 }
}
