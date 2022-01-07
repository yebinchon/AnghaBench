
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void JobSigUnlock(sigset_t *omaskp)
{
 (void)sigprocmask(SIG_SETMASK, omaskp, ((void*)0));
}
