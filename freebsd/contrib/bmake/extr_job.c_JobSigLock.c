
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int Punt (char*,int ) ;
 int SIG_BLOCK ;
 int caught_signals ;
 int errno ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void JobSigLock(sigset_t *omaskp)
{
 if (sigprocmask(SIG_BLOCK, &caught_signals, omaskp) != 0) {
  Punt("JobSigLock: sigprocmask: %s", strerror(errno));
  sigemptyset(omaskp);
 }
}
