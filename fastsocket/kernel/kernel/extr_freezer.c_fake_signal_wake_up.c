
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int signal_wake_up (struct task_struct*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fake_signal_wake_up(struct task_struct *p)
{
 unsigned long flags;

 spin_lock_irqsave(&p->sighand->siglock, flags);
 signal_wake_up(p, 0);
 spin_unlock_irqrestore(&p->sighand->siglock, flags);
}
