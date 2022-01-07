
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct quatech2_dev {int dummy; } ;


 scalar_t__ usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static inline struct quatech2_dev *qt2_get_dev_private(struct usb_serial
  *serial)
{
 return (struct quatech2_dev *)usb_get_serial_data(serial);
}
