
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int LOG_ERR ;
 int SIG_BLOCK ;
 int blocked_sigs ;
 int exit (int) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
block_sigs(void)
{
 sigset_t set;

 sigfillset(&set);
 if (sigprocmask(SIG_BLOCK, &set, &blocked_sigs) == -1) {
  syslog(LOG_ERR, "SIG_BLOCK: %m");
  exit(1);
 }
}
