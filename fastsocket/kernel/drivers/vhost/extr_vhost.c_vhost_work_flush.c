
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_work {unsigned int queue_seq; int flushing; int done; } ;
struct vhost_dev {int work_lock; } ;


 int BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vhost_work_seq_done (struct vhost_dev*,struct vhost_work*,unsigned int) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void vhost_work_flush(struct vhost_dev *dev, struct vhost_work *work)
{
 unsigned seq;
 int flushing;

 spin_lock_irq(&dev->work_lock);
 seq = work->queue_seq;
 work->flushing++;
 spin_unlock_irq(&dev->work_lock);
 wait_event(work->done, vhost_work_seq_done(dev, work, seq));
 spin_lock_irq(&dev->work_lock);
 flushing = --work->flushing;
 spin_unlock_irq(&dev->work_lock);
 BUG_ON(flushing < 0);
}
