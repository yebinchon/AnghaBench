
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int snd_usb_cm106_write_int_reg (struct usb_device*,int,int) ;

__attribute__((used)) static int snd_usb_cm106_boot_quirk(struct usb_device *dev)
{




 return snd_usb_cm106_write_int_reg(dev, 2, 0x8004);
}
