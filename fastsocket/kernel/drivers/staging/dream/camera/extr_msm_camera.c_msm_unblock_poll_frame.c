
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_sync {int unblock_poll_frame; int prev_frame_q_lock; int prev_frame_wait; } ;


 int CDBG (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static int msm_unblock_poll_frame(struct msm_sync *sync)
{
 unsigned long flags;
 CDBG("msm_unblock_poll_frame\n");
 spin_lock_irqsave(&sync->prev_frame_q_lock, flags);
 sync->unblock_poll_frame = 1;
 wake_up(&sync->prev_frame_wait);
 spin_unlock_irqrestore(&sync->prev_frame_q_lock, flags);
 return 0;
}
