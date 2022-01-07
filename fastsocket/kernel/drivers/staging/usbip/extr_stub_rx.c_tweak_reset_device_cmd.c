
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
typedef int __u16 ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int le16_to_cpu (int ) ;
 int usb_lock_device_for_reset (TYPE_1__*,int *) ;
 int usb_reset_device (TYPE_1__*) ;
 int usb_unlock_device (TYPE_1__*) ;
 int usbip_uinfo (char*,int ,int ) ;

__attribute__((used)) static int tweak_reset_device_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;
 __u16 value;
 __u16 index;
 int ret;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 value = le16_to_cpu(req->wValue);
 index = le16_to_cpu(req->wIndex);

 usbip_uinfo("reset_device (port %d) to %s\n", index,
      dev_name(&urb->dev->dev));


 ret = usb_lock_device_for_reset(urb->dev, ((void*)0));
 if (ret < 0) {
  dev_err(&urb->dev->dev, "lock for reset\n");
  return ret;
 }


 ret = usb_reset_device(urb->dev);
 if (ret < 0)
  dev_err(&urb->dev->dev, "device reset\n");

 usb_unlock_device(urb->dev);

 return ret;
}
