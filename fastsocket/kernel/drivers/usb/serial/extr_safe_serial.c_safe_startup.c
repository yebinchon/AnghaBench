
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial {TYPE_3__* interface; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceProtocol; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int EINVAL ;


 int padded ;

__attribute__((used)) static int safe_startup(struct usb_serial *serial)
{
 switch (serial->interface->cur_altsetting->desc.bInterfaceProtocol) {
 case 129:
  break;
 case 128:
  padded = 1;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
