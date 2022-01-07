
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu; } ;
struct k_itimer {TYPE_1__ it; int sigq; int it_pid; int it_id; } ;


 int call_rcu (int *,int ) ;
 int idr_lock ;
 int idr_remove (int *,int ) ;
 int k_itimer_rcu_free ;
 int posix_timers_id ;
 int put_pid (int ) ;
 int sigqueue_free (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void release_posix_timer(struct k_itimer *tmr, int it_id_set)
{
 if (it_id_set) {
  unsigned long flags;
  spin_lock_irqsave(&idr_lock, flags);
  idr_remove(&posix_timers_id, tmr->it_id);
  spin_unlock_irqrestore(&idr_lock, flags);
 }
 put_pid(tmr->it_pid);
 sigqueue_free(tmr->sigq);
 call_rcu(&tmr->it.rcu, k_itimer_rcu_free);
}
