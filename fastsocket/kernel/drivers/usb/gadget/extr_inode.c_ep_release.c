
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct ep_data* private_data; } ;
struct TYPE_4__ {scalar_t__ bDescriptorType; } ;
struct TYPE_3__ {scalar_t__ bDescriptorType; } ;
struct ep_data {scalar_t__ state; int lock; int ep; TYPE_2__ hs_desc; TYPE_1__ desc; } ;


 scalar_t__ STATE_EP_DISABLED ;
 scalar_t__ STATE_EP_UNBOUND ;
 int down_interruptible (int *) ;
 int put_ep (struct ep_data*) ;
 int up (int *) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static int
ep_release (struct inode *inode, struct file *fd)
{
 struct ep_data *data = fd->private_data;
 int value;

 if ((value = down_interruptible(&data->lock)) < 0)
  return value;


 if (data->state != STATE_EP_UNBOUND) {
  data->state = STATE_EP_DISABLED;
  data->desc.bDescriptorType = 0;
  data->hs_desc.bDescriptorType = 0;
  usb_ep_disable(data->ep);
 }
 up (&data->lock);
 put_ep (data);
 return 0;
}
