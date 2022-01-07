
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_2__* dev; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;
__attribute__((used)) static int qt2_calc_num_ports(struct usb_serial *serial)
{
 int num_ports;
 int flag_as_400;
 switch (serial->dev->descriptor.idProduct) {
 case 128:
  num_ports = 1;
  break;

 case 133:
  flag_as_400 = 1;
 case 134:
  num_ports = 2;
 break;

 case 129:
  flag_as_400 = 1;
 case 130:
  num_ports = 4;
 break;

 case 131:
  flag_as_400 = 1;
 case 132:
  num_ports = 8;
 break;
 default:
 num_ports = 1;
 break;
 }
 return num_ports;
}
