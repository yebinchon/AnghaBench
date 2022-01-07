
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tranzport {scalar_t__ ring_head; scalar_t__ ring_tail; int interrupt_out_busy; int write_wait; int read_wait; } ;
struct file {struct usb_tranzport* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int usb_tranzport_poll(struct file *file, poll_table * wait)
{
 struct usb_tranzport *dev;
 unsigned int mask = 0;
 dev = file->private_data;
 poll_wait(file, &dev->read_wait, wait);
 poll_wait(file, &dev->write_wait, wait);
 if (dev->ring_head != dev->ring_tail)
  mask |= POLLIN | POLLRDNORM;
 if (!dev->interrupt_out_busy)
  mask |= POLLOUT | POLLWRNORM;
 return mask;
}
