
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_work {int queue_seq; int node; } ;
struct vhost_dev {int work_lock; int worker; int work_list; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void vhost_work_queue(struct vhost_dev *dev,
        struct vhost_work *work)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->work_lock, flags);
 if (list_empty(&work->node)) {
  list_add_tail(&work->node, &dev->work_list);
  work->queue_seq++;
  wake_up_process(dev->worker);
 }
 spin_unlock_irqrestore(&dev->work_lock, flags);
}
