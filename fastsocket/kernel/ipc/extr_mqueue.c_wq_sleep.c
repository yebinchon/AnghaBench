
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_inode_info {int lock; } ;
struct ext_wait_queue {scalar_t__ state; int list; } ;


 int ERESTARTSYS ;
 int ETIMEDOUT ;
 scalar_t__ STATE_PENDING ;
 scalar_t__ STATE_READY ;
 int TASK_INTERRUPTIBLE ;
 int cpu_relax () ;
 int current ;
 int list_del (int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wq_add (struct mqueue_inode_info*,int,struct ext_wait_queue*) ;

__attribute__((used)) static int wq_sleep(struct mqueue_inode_info *info, int sr,
   long timeout, struct ext_wait_queue *ewp)
{
 int retval;
 signed long time;

 wq_add(info, sr, ewp);

 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);

  spin_unlock(&info->lock);
  time = schedule_timeout(timeout);

  while (ewp->state == STATE_PENDING)
   cpu_relax();

  if (ewp->state == STATE_READY) {
   retval = 0;
   goto out;
  }
  spin_lock(&info->lock);
  if (ewp->state == STATE_READY) {
   retval = 0;
   goto out_unlock;
  }
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  if (time == 0) {
   retval = -ETIMEDOUT;
   break;
  }
 }
 list_del(&ewp->list);
out_unlock:
 spin_unlock(&info->lock);
out:
 return retval;
}
