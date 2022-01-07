
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_listener {scalar_t__ event_count; struct uio_device* dev; } ;
struct uio_device {int event; int wait; TYPE_1__* info; } ;
struct file {struct uio_listener* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {scalar_t__ irq; } ;


 unsigned int EIO ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ UIO_IRQ_NONE ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int uio_poll(struct file *filep, poll_table *wait)
{
 struct uio_listener *listener = filep->private_data;
 struct uio_device *idev = listener->dev;

 if (idev->info->irq == UIO_IRQ_NONE)
  return -EIO;

 poll_wait(filep, &idev->wait, wait);
 if (listener->event_count != atomic_read(&idev->event))
  return POLLIN | POLLRDNORM;
 return 0;
}
