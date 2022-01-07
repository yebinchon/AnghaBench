
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {int current_rx_bytes; int lock; int rx_buffers; int tx_reqs; int tx_wait; int rx_wait; int lock_printer_io; } ;
struct file {struct printer_dev* private_data; } ;
typedef int poll_table ;


 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int setup_rx_reqs (struct printer_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
printer_poll(struct file *fd, poll_table *wait)
{
 struct printer_dev *dev = fd->private_data;
 unsigned long flags;
 int status = 0;

 spin_lock(&dev->lock_printer_io);
 spin_lock_irqsave(&dev->lock, flags);
 setup_rx_reqs(dev);
 spin_unlock_irqrestore(&dev->lock, flags);
 spin_unlock(&dev->lock_printer_io);

 poll_wait(fd, &dev->rx_wait, wait);
 poll_wait(fd, &dev->tx_wait, wait);

 spin_lock_irqsave(&dev->lock, flags);
 if (likely(!list_empty(&dev->tx_reqs)))
  status |= POLLOUT | POLLWRNORM;

 if (likely(dev->current_rx_bytes) ||
   likely(!list_empty(&dev->rx_buffers)))
  status |= POLLIN | POLLRDNORM;

 spin_unlock_irqrestore(&dev->lock, flags);

 return status;
}
