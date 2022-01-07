
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_flags; struct ep_data* private_data; } ;
struct ep_data {int lock; TYPE_1__* dev; int * ep; } ;
struct TYPE_2__ {int lock; } ;


 int ENODEV ;
 int ENOTTY ;



 int get_ready_ep (int ,struct ep_data*) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up (int *) ;
 int usb_ep_clear_halt (int *) ;
 int usb_ep_fifo_flush (int *) ;
 int usb_ep_fifo_status (int *) ;

__attribute__((used)) static long ep_ioctl(struct file *fd, unsigned code, unsigned long value)
{
 struct ep_data *data = fd->private_data;
 int status;

 if ((status = get_ready_ep (fd->f_flags, data)) < 0)
  return status;

 spin_lock_irq (&data->dev->lock);
 if (likely (data->ep != ((void*)0))) {
  switch (code) {
  case 128:
   status = usb_ep_fifo_status (data->ep);
   break;
  case 129:
   usb_ep_fifo_flush (data->ep);
   break;
  case 130:
   status = usb_ep_clear_halt (data->ep);
   break;
  default:
   status = -ENOTTY;
  }
 } else
  status = -ENODEV;
 spin_unlock_irq (&data->dev->lock);
 up (&data->lock);
 return status;
}
