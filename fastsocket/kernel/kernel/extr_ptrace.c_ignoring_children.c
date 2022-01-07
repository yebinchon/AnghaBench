
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sighand_struct {int siglock; TYPE_2__* action; } ;
struct TYPE_3__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;


 int SA_NOCLDWAIT ;
 int SIGCHLD ;
 scalar_t__ SIG_IGN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ignoring_children(struct sighand_struct *sigh)
{
 int ret;
 spin_lock(&sigh->siglock);
 ret = (sigh->action[SIGCHLD-1].sa.sa_handler == SIG_IGN) ||
       (sigh->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDWAIT);
 spin_unlock(&sigh->siglock);
 return ret;
}
