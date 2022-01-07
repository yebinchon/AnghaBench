
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int wait; int iuspin; int flags; scalar_t__ werr; scalar_t__ rerr; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct wdm_device* private_data; } ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int WDM_DISCONNECTING ;
 int WDM_IN_USE ;
 int WDM_READ ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned int wdm_poll(struct file *file, struct poll_table_struct *wait)
{
 struct wdm_device *desc = file->private_data;
 unsigned long flags;
 unsigned int mask = 0;

 spin_lock_irqsave(&desc->iuspin, flags);
 if (test_bit(WDM_DISCONNECTING, &desc->flags)) {
  mask = POLLERR;
  spin_unlock_irqrestore(&desc->iuspin, flags);
  goto desc_out;
 }
 if (test_bit(WDM_READ, &desc->flags))
  mask = POLLIN | POLLRDNORM;
 if (desc->rerr || desc->werr)
  mask |= POLLERR;
 if (!test_bit(WDM_IN_USE, &desc->flags))
  mask |= POLLOUT | POLLWRNORM;
 spin_unlock_irqrestore(&desc->iuspin, flags);

 poll_wait(file, &desc->wait, wait);

desc_out:
 return mask;
}
