
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_4__ {scalar_t__ sa_handler; } ;
struct k_sigaction {TYPE_2__ sa; } ;
typedef int sigset_t ;
struct TYPE_3__ {struct k_sigaction* action; } ;


 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int _NSIG ;
 int sigaddset (int *,int) ;

__attribute__((used)) static void collect_sigign_sigcatch(struct task_struct *p, sigset_t *ign,
        sigset_t *catch)
{
 struct k_sigaction *k;
 int i;

 k = p->sighand->action;
 for (i = 1; i <= _NSIG; ++i, ++k) {
  if (k->sa.sa_handler == SIG_IGN)
   sigaddset(ign, i);
  else if (k->sa.sa_handler != SIG_DFL)
   sigaddset(catch, i);
 }
}
