
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int gone_away; } ;
struct platform_device {int dummy; } ;


 int ftdi_elan_put_kref (struct usb_ftdi*) ;
 struct usb_ftdi* platform_device_to_usb_ftdi (struct platform_device*) ;

void ftdi_elan_gone_away(struct platform_device *pdev)
{
        struct usb_ftdi *ftdi = platform_device_to_usb_ftdi(pdev);
        ftdi->gone_away += 1;
        ftdi_elan_put_kref(ftdi);
}
