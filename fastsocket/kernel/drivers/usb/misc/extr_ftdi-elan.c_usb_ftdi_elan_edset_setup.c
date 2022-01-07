
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_ftdi {int dummy; } ;
struct urb {int dummy; } ;
struct platform_device {int dummy; } ;


 int ftdi_elan_edset_setup (struct usb_ftdi*,int ,void*,struct urb*,int ,int ,int ,void (*) (void*,struct urb*,int *,int,int,int,int,int,int,int,int,int)) ;
 struct usb_ftdi* platform_device_to_usb_ftdi (struct platform_device*) ;

int usb_ftdi_elan_edset_setup(struct platform_device *pdev, u8 ed_number,
        void *endp, struct urb *urb, u8 address, u8 ep_number, u8 toggle_bits,
        void (*callback) (void *endp, struct urb *urb, u8 *buf, int len,
        int toggle_bits, int error_count, int condition_code, int repeat_number,
         int halted, int skipped, int actual, int non_null))
{
        struct usb_ftdi *ftdi = platform_device_to_usb_ftdi(pdev);
        return ftdi_elan_edset_setup(ftdi, ed_number, endp, urb, address,
                ep_number, toggle_bits, callback);
}
