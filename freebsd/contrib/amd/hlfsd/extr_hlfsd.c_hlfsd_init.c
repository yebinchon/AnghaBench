
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int (* sa_handler ) (int ) ;} ;
struct itimerval {int dummy; } ;


 int D_DAEMON ;
 int ITIMER_REAL ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN (int ) ;
 int XLOG_INFO ;
 int am_set_mypid () ;
 scalar_t__ amuDebug (int ) ;
 int amu_release_controlling_tty () ;
 int cleanup (int ) ;
 int clocktime (int *) ;
 int fatal (char*) ;
 int fork () ;
 int getppid () ;
 int hlfsd_init_filehandles () ;
 int interlock (int ) ;
 scalar_t__ kill (int ,int ) ;
 int masterpid ;
 int plog (int ,char*) ;
 int plt_init () ;
 int plt_print (int ) ;
 int reload (int ) ;
 int reloadinterval ;
 int serverpid ;
 scalar_t__ setitimer (int ,int *,struct itimerval*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int (*) (int )) ;
 int startup ;
 int svc_run () ;

__attribute__((used)) static void
hlfsd_init(void)
{
  int child = 0;







  plog(XLOG_INFO, "initializing hlfsd file handles");
  hlfsd_init_filehandles();




  if (amuDebug(D_DAEMON))
    child = fork();

  if (child < 0)
    fatal("fork: %m");

  if (child != 0) {
    masterpid = child;
    am_set_mypid();
    return;
  }






  plog(XLOG_INFO, "initializing home directory database");
  plt_init();
  plog(XLOG_INFO, "home directory database initialized");

  masterpid = serverpid = am_set_mypid();
  signal(SIGALRM, reload);
  signal(SIGHUP, reload);
  signal(SIGTERM, cleanup);
  signal(SIGCHLD, interlock);
  signal(SIGUSR1, SIG_IGN);



  if (setitimer(ITIMER_REAL, &reloadinterval, (struct itimerval *) ((void*)0)) < 0)
    fatal("setitimer: %m");

  clocktime(&startup);






  if (amuDebug(D_DAEMON)) {



    amu_release_controlling_tty();





    if (kill(getppid(), SIGUSR2) < 0)
      fatal("kill: %m");
    plog(XLOG_INFO, "starting svc_run");
    svc_run();
    cleanup(0);
  }

}
