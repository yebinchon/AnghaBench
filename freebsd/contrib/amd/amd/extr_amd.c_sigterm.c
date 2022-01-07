
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;




 int XLOG_WARNING ;
 int immediate_abort ;
 int longjmp (int ,int) ;
 int plog (int ,char*,int) ;
 int select_intr ;
 scalar_t__ select_intr_valid ;
 int signal (int,int (*) (int)) ;

__attribute__((used)) static RETSIGTYPE
sigterm(int sig)
{




  switch (sig) {
  case 129:
    immediate_abort = 15;
    break;

  case 128:
    immediate_abort = -1;


  default:
    plog(XLOG_WARNING, "WARNING: automounter going down on signal %d", sig);
    break;
  }
  if (select_intr_valid)
    longjmp(select_intr, sig);
}
