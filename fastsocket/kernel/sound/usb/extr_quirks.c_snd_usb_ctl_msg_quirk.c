
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
typedef int __u8 ;
typedef int __u16 ;


 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 int le16_to_cpu (int ) ;
 int mdelay (int) ;

void snd_usb_ctl_msg_quirk(struct usb_device *dev, unsigned int pipe,
      __u8 request, __u8 requesttype, __u16 value,
      __u16 index, void *data, __u16 size)
{




 if ((le16_to_cpu(dev->descriptor.idVendor) == 0x23ba) &&
     (requesttype & USB_TYPE_MASK) == USB_TYPE_CLASS)
  mdelay(20);
}
