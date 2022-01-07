
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*) ;
 int debug ;
 int register_console (int *) ;
 int usbcons ;

void usb_serial_console_init(int serial_debug, int minor)
{
 debug = serial_debug;

 if (minor == 0) {
  dbg("registering the USB serial console.");
  register_console(&usbcons);
 }
}
