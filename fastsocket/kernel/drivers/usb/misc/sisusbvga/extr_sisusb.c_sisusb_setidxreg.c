
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sisusb_usb_data {int dummy; } ;


 int SISUSB_TYPE_IO ;
 int sisusb_write_memio_byte (struct sisusb_usb_data*,int ,int,int ) ;

int
sisusb_setidxreg(struct sisusb_usb_data *sisusb, int port, u8 index, u8 data)
{
 int ret;
 ret = sisusb_write_memio_byte(sisusb, SISUSB_TYPE_IO, port, index);
 ret |= sisusb_write_memio_byte(sisusb, SISUSB_TYPE_IO, port + 1, data);
 return ret;
}
