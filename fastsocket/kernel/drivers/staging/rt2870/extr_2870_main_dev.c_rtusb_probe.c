
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
typedef int PRTMP_ADAPTER ;


 scalar_t__ rt28xx_probe (void*,void*,int ,int *) ;

__attribute__((used)) static int rtusb_probe (struct usb_interface *intf,
      const struct usb_device_id *id)
{
 PRTMP_ADAPTER pAd;
 return (int)rt28xx_probe((void *)intf, (void *)id, 0, &pAd);
}
