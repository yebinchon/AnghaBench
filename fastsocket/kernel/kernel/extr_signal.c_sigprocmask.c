
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {TYPE_1__* sighand; int blocked; } ;
struct TYPE_3__ {int siglock; } ;


 int EINVAL ;



 TYPE_2__* current ;
 int recalc_sigpending () ;
 int signandsets (int *,int *,int *) ;
 int sigorsets (int *,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int sigprocmask(int how, sigset_t *set, sigset_t *oldset)
{
 int error;

 spin_lock_irq(&current->sighand->siglock);
 if (oldset)
  *oldset = current->blocked;

 error = 0;
 switch (how) {
 case 130:
  sigorsets(&current->blocked, &current->blocked, set);
  break;
 case 128:
  signandsets(&current->blocked, &current->blocked, set);
  break;
 case 129:
  current->blocked = *set;
  break;
 default:
  error = -EINVAL;
 }
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);

 return error;
}
