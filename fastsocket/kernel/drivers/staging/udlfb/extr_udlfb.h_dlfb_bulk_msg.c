
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dlfb_data {TYPE_1__* tx_urb; int done; } ;
struct TYPE_3__ {int actual_length; int transfer_buffer_length; } ;


 int GFP_KERNEL ;
 int init_completion (int *) ;
 int printk (char*) ;
 int usb_kill_urb (TYPE_1__*) ;
 int usb_submit_urb (TYPE_1__*,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int dlfb_bulk_msg(struct dlfb_data *dev_info, int len)
{
 int ret;

 init_completion(&dev_info->done);

 dev_info->tx_urb->actual_length = 0;
 dev_info->tx_urb->transfer_buffer_length = len;

 ret = usb_submit_urb(dev_info->tx_urb, GFP_KERNEL);
 if (!wait_for_completion_timeout(&dev_info->done, 1000)) {
  usb_kill_urb(dev_info->tx_urb);
  printk("usb timeout !!!\n");
 }

 return dev_info->tx_urb->actual_length;
}
