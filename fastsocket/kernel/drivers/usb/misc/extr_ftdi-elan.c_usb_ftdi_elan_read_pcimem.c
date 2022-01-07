
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_ftdi {scalar_t__ initialized; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int ftdi_elan_read_pcimem (struct usb_ftdi*,int,int ,int *) ;
 struct usb_ftdi* platform_device_to_usb_ftdi (struct platform_device*) ;

int usb_ftdi_elan_read_pcimem(struct platform_device *pdev, int mem_offset,
        u8 width, u32 *data)
{
        struct usb_ftdi *ftdi = platform_device_to_usb_ftdi(pdev);
        if (ftdi->initialized == 0) {
                return -ENODEV;
        } else
                return ftdi_elan_read_pcimem(ftdi, mem_offset, width, data);
}
