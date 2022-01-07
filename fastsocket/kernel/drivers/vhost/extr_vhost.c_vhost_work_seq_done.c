
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_work {unsigned int done_seq; } ;
struct vhost_dev {int work_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool vhost_work_seq_done(struct vhost_dev *dev, struct vhost_work *work,
    unsigned seq)
{
 int left;
 spin_lock_irq(&dev->work_lock);
 left = seq - work->done_seq;
 spin_unlock_irq(&dev->work_lock);
 return left <= 0;
}
