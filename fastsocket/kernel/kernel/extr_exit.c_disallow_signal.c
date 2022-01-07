
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t sig ;
struct TYPE_8__ {TYPE_3__* sighand; } ;
struct TYPE_7__ {int siglock; TYPE_2__* action; } ;
struct TYPE_5__ {int sa_handler; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;


 int EINVAL ;
 int SIG_IGN ;
 TYPE_4__* current ;
 int recalc_sigpending () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int valid_signal (int) ;

int disallow_signal(int sig)
{
 if (!valid_signal(sig) || sig < 1)
  return -EINVAL;

 spin_lock_irq(&current->sighand->siglock);
 current->sighand->action[(sig)-1].sa.sa_handler = SIG_IGN;
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
 return 0;
}
