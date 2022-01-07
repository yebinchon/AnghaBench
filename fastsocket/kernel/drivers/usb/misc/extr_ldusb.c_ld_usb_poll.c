
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_usb {scalar_t__ ring_head; scalar_t__ ring_tail; int interrupt_out_busy; int write_wait; int read_wait; int intf; } ;
struct file {struct ld_usb* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int ld_usb_poll(struct file *file, poll_table *wait)
{
 struct ld_usb *dev;
 unsigned int mask = 0;

 dev = file->private_data;

 if (!dev->intf)
  return POLLERR | POLLHUP;

 poll_wait(file, &dev->read_wait, wait);
 poll_wait(file, &dev->write_wait, wait);

 if (dev->ring_head != dev->ring_tail)
  mask |= POLLIN | POLLRDNORM;
 if (!dev->interrupt_out_busy)
  mask |= POLLOUT | POLLWRNORM;

 return mask;
}
