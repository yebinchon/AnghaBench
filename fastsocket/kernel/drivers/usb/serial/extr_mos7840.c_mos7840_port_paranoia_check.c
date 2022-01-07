
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;


 int dbg (char*,char const*) ;

__attribute__((used)) static int mos7840_port_paranoia_check(struct usb_serial_port *port,
           const char *function)
{
 if (!port) {
  dbg("%s - port == NULL", function);
  return -1;
 }
 if (!port->serial) {
  dbg("%s - port->serial == NULL", function);
  return -1;
 }

 return 0;
}
