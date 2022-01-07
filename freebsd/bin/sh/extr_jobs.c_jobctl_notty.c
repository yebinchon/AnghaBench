
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int close (int) ;
 int iflag ;
 int jobctl ;
 scalar_t__ mflag ;
 int out2fmt_flush (char*) ;
 int setsignal (int ) ;
 int ttyfd ;

__attribute__((used)) static void
jobctl_notty(void)
{
 if (ttyfd >= 0) {
  close(ttyfd);
  ttyfd = -1;
 }
 if (!iflag) {
  setsignal(SIGTSTP);
  setsignal(SIGTTOU);
  setsignal(SIGTTIN);
  jobctl = 1;
  return;
 }
 out2fmt_flush("sh: can't access tty; job control turned off\n");
 mflag = 0;
}
