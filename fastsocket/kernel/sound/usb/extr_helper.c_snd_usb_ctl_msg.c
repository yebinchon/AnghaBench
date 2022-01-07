
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 int memcpy (void*,void*,int ) ;
 int snd_usb_ctl_msg_quirk (struct usb_device*,unsigned int,int ,int ,int ,int ,void*,int ) ;
 int usb_control_msg (struct usb_device*,unsigned int,int ,int ,int ,int ,void*,int ,int) ;

int snd_usb_ctl_msg(struct usb_device *dev, unsigned int pipe, __u8 request,
      __u8 requesttype, __u16 value, __u16 index, void *data,
      __u16 size)
{
 int err;
 void *buf = ((void*)0);

 if (size > 0) {
  buf = kmemdup(data, size, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;
 }
 err = usb_control_msg(dev, pipe, request, requesttype,
         value, index, buf, size, 1000);
 if (size > 0) {
  memcpy(data, buf, size);
  kfree(buf);
 }

 snd_usb_ctl_msg_quirk(dev, pipe, request, requesttype,
         value, index, data, size);

 return err;
}
