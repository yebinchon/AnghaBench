
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct sighand_struct* sighand; } ;
struct sighand_struct {int siglock; } ;


 scalar_t__ likely (int) ;
 struct sighand_struct* rcu_dereference (struct sighand_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

struct sighand_struct *lock_task_sighand(struct task_struct *tsk, unsigned long *flags)
{
 struct sighand_struct *sighand;

 rcu_read_lock();
 for (;;) {
  sighand = rcu_dereference(tsk->sighand);
  if (unlikely(sighand == ((void*)0)))
   break;

  spin_lock_irqsave(&sighand->siglock, *flags);
  if (likely(sighand == tsk->sighand))
   break;
  spin_unlock_irqrestore(&sighand->siglock, *flags);
 }
 rcu_read_unlock();

 return sighand;
}
