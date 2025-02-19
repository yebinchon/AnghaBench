
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_2__* dev; } ;
typedef int speed_t ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 scalar_t__ MCT_U232_BELKIN_F5U109_PID ;
 scalar_t__ MCT_U232_SITECOM_PID ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int mct_u232_calculate_baud_rate(struct usb_serial *serial,
     speed_t value, speed_t *result)
{
 *result = value;

 if (le16_to_cpu(serial->dev->descriptor.idProduct) == MCT_U232_SITECOM_PID
  || le16_to_cpu(serial->dev->descriptor.idProduct) == MCT_U232_BELKIN_F5U109_PID) {
  switch (value) {
  case 300:
   return 0x01;
  case 600:
   return 0x02;
  case 1200:
   return 0x03;
  case 2400:
   return 0x04;
  case 4800:
   return 0x06;
  case 9600:
   return 0x08;
  case 19200:
   return 0x09;
  case 38400:
   return 0x0a;
  case 57600:
   return 0x0b;
  case 115200:
   return 0x0c;
  default:
   *result = 9600;
   return 0x08;
  }
 } else {



  switch (value) {
  case 300: break;
  case 600: break;
  case 1200: break;
  case 2400: break;
  case 4800: break;
  case 9600: break;
  case 19200: break;
  case 38400: break;
  case 57600: break;
  case 115200: break;
  default:
   value = 9600;
   *result = 9600;
  }
  return 115200/value;
 }
}
