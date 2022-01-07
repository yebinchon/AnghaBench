
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ ki_pid; } ;


 int EOF ;
 scalar_t__ ESRCH ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int getchar () ;
 scalar_t__ interactive ;
 int kill (scalar_t__,int ) ;
 int printf (char*) ;
 int show_process (struct kinfo_proc const*) ;
 int signum ;
 int stdout ;
 int warn (char*,int) ;

__attribute__((used)) static int
killact(const struct kinfo_proc *kp)
{
 int ch, first;

 if (interactive) {



  printf("kill ");
  show_process(kp);
  printf("? ");
  fflush(stdout);
  first = ch = getchar();
  while (ch != '\n' && ch != EOF)
   ch = getchar();
  if (first != 'y' && first != 'Y')
   return (1);
 }
 if (kill(kp->ki_pid, signum) == -1) {





  if (errno != ESRCH)
   warn("signalling pid %d", (int)kp->ki_pid);





  return (0);
 }
 return (1);
}
