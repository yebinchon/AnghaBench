
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_serial {TYPE_5__* interface; } ;
struct TYPE_10__ {TYPE_3__* cur_altsetting; TYPE_2__* altsetting; } ;
struct TYPE_9__ {int bNumEndpoints; } ;
struct TYPE_8__ {TYPE_4__ desc; } ;
struct TYPE_6__ {scalar_t__ bNumEndpoints; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int dbg (char*,int) ;

__attribute__((used)) static int qt_calc_num_ports(struct usb_serial *serial)
{
 int num_ports;

 dbg("numberofendpoints: %d \n",
     (int)serial->interface->cur_altsetting->desc.bNumEndpoints);
 dbg("numberofendpoints: %d \n",
     (int)serial->interface->altsetting->desc.bNumEndpoints);

 num_ports =
     (serial->interface->cur_altsetting->desc.bNumEndpoints - 1) / 2;

 return num_ports;
}
