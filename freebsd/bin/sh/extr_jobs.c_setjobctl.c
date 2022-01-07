
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD_CLOEXEC ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int _PATH_TTY ;
 int close (int) ;
 int fcntl (int,int ,int) ;
 int getpgrp () ;
 int iflag ;
 int initialpgrp ;
 int isatty (int) ;
 int jobctl ;
 int jobctl_notty () ;
 int kill (int ,int ) ;
 int open (int ,int) ;
 int rootpid ;
 scalar_t__ rootshell ;
 int setpgid (int ,int) ;
 int setsignal (int ) ;
 int tcgetpgrp (int) ;
 int tcsetpgrp (int,int) ;
 int ttyfd ;

void
setjobctl(int on)
{
 int i;

 if (on == jobctl || rootshell == 0)
  return;
 if (on) {
  if (ttyfd != -1)
   close(ttyfd);
  if ((ttyfd = open(_PATH_TTY, O_RDWR | O_CLOEXEC)) < 0) {
   i = 0;
   while (i <= 2 && !isatty(i))
    i++;
   if (i > 2 ||
       (ttyfd = fcntl(i, F_DUPFD_CLOEXEC, 10)) < 0) {
    jobctl_notty();
    return;
   }
  }
  if (ttyfd < 10) {




   if ((i = fcntl(ttyfd, F_DUPFD_CLOEXEC, 10)) < 0) {
    jobctl_notty();
    return;
   }
   close(ttyfd);
   ttyfd = i;
  }
  do {
   initialpgrp = tcgetpgrp(ttyfd);
   if (initialpgrp < 0) {
    jobctl_notty();
    return;
   }
   if (initialpgrp != getpgrp()) {
    if (!iflag) {
     initialpgrp = -1;
     jobctl_notty();
     return;
    }
    kill(0, SIGTTIN);
    continue;
   }
  } while (0);
  setsignal(SIGTSTP);
  setsignal(SIGTTOU);
  setsignal(SIGTTIN);
  setpgid(0, rootpid);
  tcsetpgrp(ttyfd, rootpid);
 } else {
  setpgid(0, initialpgrp);
  if (ttyfd >= 0) {
   tcsetpgrp(ttyfd, initialpgrp);
   close(ttyfd);
   ttyfd = -1;
  }
  setsignal(SIGTSTP);
  setsignal(SIGTTOU);
  setsignal(SIGTTIN);
 }
 jobctl = on;
}
