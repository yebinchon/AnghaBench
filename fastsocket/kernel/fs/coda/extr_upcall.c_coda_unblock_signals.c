
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {TYPE_1__* sighand; int blocked; } ;
struct TYPE_3__ {int siglock; } ;


 TYPE_2__* current ;
 int recalc_sigpending () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void coda_unblock_signals(sigset_t *old)
{
 spin_lock_irq(&current->sighand->siglock);
 current->blocked = *old;
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
}
