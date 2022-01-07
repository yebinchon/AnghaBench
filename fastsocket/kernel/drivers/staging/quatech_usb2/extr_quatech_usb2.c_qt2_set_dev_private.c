
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct quatech2_dev {int dummy; } ;


 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static inline void qt2_set_dev_private(struct usb_serial *serial,
  struct quatech2_dev *data)
{
 usb_set_serial_data(serial, (void *)data);
}
