
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_REQ_GET_STATUS ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int,int *,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int usb_get_status(struct usb_device *dev, int type, int target, void *data)
{
 int ret;
 u16 *status = kmalloc(sizeof(*status), GFP_KERNEL);

 if (!status)
  return -ENOMEM;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
  USB_REQ_GET_STATUS, USB_DIR_IN | type, 0, target, status,
  sizeof(*status), USB_CTRL_GET_TIMEOUT);

 *(u16 *)data = *status;
 kfree(status);
 return ret;
}
