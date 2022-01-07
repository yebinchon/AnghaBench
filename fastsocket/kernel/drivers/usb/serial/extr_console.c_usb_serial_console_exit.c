
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {scalar_t__ console; } ;


 int unregister_console (int *) ;
 int usbcons ;
 TYPE_2__ usbcons_info ;

void usb_serial_console_exit(void)
{
 if (usbcons_info.port) {
  unregister_console(&usbcons);
  usbcons_info.port->console = 0;
  usbcons_info.port = ((void*)0);
 }
}
