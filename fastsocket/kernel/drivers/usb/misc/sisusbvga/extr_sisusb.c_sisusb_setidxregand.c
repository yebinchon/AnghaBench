
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sisusb_usb_data {int dummy; } ;


 int sisusb_setidxregandor (struct sisusb_usb_data*,int,int ,int ,int) ;

int
sisusb_setidxregand(struct sisusb_usb_data *sisusb, int port, u8 idx, u8 myand)
{
 return(sisusb_setidxregandor(sisusb, port, idx, myand, 0x00));
}
