
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int abort () ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

int
sigsetmask (int set)
{
    sigset_t new_sig;
    sigset_t old_sig;

    sigemptyset (&new_sig);
    if (set != 0) {
      abort();
    }
    sigprocmask(SIG_SETMASK, &new_sig, &old_sig);
    return 1;
}
