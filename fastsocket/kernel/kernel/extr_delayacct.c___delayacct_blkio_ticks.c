
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* delays; } ;
typedef int __u64 ;
struct TYPE_2__ {int lock; scalar_t__ swapin_delay; scalar_t__ blkio_delay; } ;


 int nsec_to_clock_t (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__u64 __delayacct_blkio_ticks(struct task_struct *tsk)
{
 __u64 ret;
 unsigned long flags;

 spin_lock_irqsave(&tsk->delays->lock, flags);
 ret = nsec_to_clock_t(tsk->delays->blkio_delay +
    tsk->delays->swapin_delay);
 spin_unlock_irqrestore(&tsk->delays->lock, flags);
 return ret;
}
