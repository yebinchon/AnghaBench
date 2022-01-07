
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u8 ;


 int DTK_ADDR_SPACE_XDATA ;
 int read_download_mem (struct usb_device*,int,int,int ,int *) ;

__attribute__((used)) static int read_ram(struct usb_device *dev, int start_address,
      int length, __u8 *buffer)
{
 return read_download_mem(dev, start_address, length,
     DTK_ADDR_SPACE_XDATA, buffer);
}
