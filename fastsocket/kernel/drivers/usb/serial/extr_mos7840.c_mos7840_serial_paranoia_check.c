
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int type; } ;


 int dbg (char*,char const*) ;

__attribute__((used)) static int mos7840_serial_paranoia_check(struct usb_serial *serial,
      const char *function)
{
 if (!serial) {
  dbg("%s - serial == NULL", function);
  return -1;
 }
 if (!serial->type) {
  dbg("%s - serial->type == NULL!", function);
  return -1;
 }

 return 0;
}
