
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct completion {TYPE_1__ wait; int done; } ;


 int TASK_NORMAL ;
 int __wake_up_common (TYPE_1__*,int ,int,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void complete(struct completion *x)
{
 unsigned long flags;

 spin_lock_irqsave(&x->wait.lock, flags);
 x->done++;
 __wake_up_common(&x->wait, TASK_NORMAL, 1, 0, ((void*)0));
 spin_unlock_irqrestore(&x->wait.lock, flags);
}
