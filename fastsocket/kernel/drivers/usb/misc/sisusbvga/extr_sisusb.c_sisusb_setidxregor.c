
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sisusb_usb_data {int dummy; } ;


 int sisusb_setidxregandor (struct sisusb_usb_data*,int,int ,int,int ) ;

int
sisusb_setidxregor(struct sisusb_usb_data *sisusb, int port, u8 index, u8 myor)
{
 return(sisusb_setidxregandor(sisusb, port, index, 0xff, myor));
}
