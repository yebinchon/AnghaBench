
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_descriptor {int dummy; } ;
struct usb_device {int descriptor; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOIO ;
 int USB_DT_DEVICE ;
 int kfree (struct usb_device_descriptor*) ;
 struct usb_device_descriptor* kmalloc (int,int ) ;
 int memcpy (int *,struct usb_device_descriptor*,unsigned int) ;
 int usb_get_descriptor (struct usb_device*,int ,int ,struct usb_device_descriptor*,unsigned int) ;

int usb_get_device_descriptor(struct usb_device *dev, unsigned int size)
{
 struct usb_device_descriptor *desc;
 int ret;

 if (size > sizeof(*desc))
  return -EINVAL;
 desc = kmalloc(sizeof(*desc), GFP_NOIO);
 if (!desc)
  return -ENOMEM;

 ret = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, size);
 if (ret >= 0)
  memcpy(&dev->descriptor, desc, size);
 kfree(desc);
 return ret;
}
