
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;
typedef void* __u8 ;
typedef int __u16 ;


 int ENOMEM ;
 int GFP_NOIO ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int usb_internal_control_msg (struct usb_device*,unsigned int,struct usb_ctrlrequest*,void*,int ,int) ;

int usb_control_msg(struct usb_device *dev, unsigned int pipe, __u8 request,
      __u8 requesttype, __u16 value, __u16 index, void *data,
      __u16 size, int timeout)
{
 struct usb_ctrlrequest *dr;
 int ret;

 dr = kmalloc(sizeof(struct usb_ctrlrequest), GFP_NOIO);
 if (!dr)
  return -ENOMEM;

 dr->bRequestType = requesttype;
 dr->bRequest = request;
 dr->wValue = cpu_to_le16(value);
 dr->wIndex = cpu_to_le16(index);
 dr->wLength = cpu_to_le16(size);



 ret = usb_internal_control_msg(dev, pipe, dr, data, size, timeout);

 kfree(dr);

 return ret;
}
