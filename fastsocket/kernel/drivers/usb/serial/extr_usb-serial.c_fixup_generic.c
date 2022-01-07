
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {int dummy; } ;


 int chars_in_buffer ;
 int close ;
 int disconnect ;
 int open ;
 int read_bulk_callback ;
 int release ;
 int set_to_generic_if_null (struct usb_serial_driver*,int ) ;
 int write ;
 int write_bulk_callback ;
 int write_room ;

__attribute__((used)) static void fixup_generic(struct usb_serial_driver *device)
{
 set_to_generic_if_null(device, open);
 set_to_generic_if_null(device, write);
 set_to_generic_if_null(device, close);
 set_to_generic_if_null(device, write_room);
 set_to_generic_if_null(device, chars_in_buffer);
 set_to_generic_if_null(device, read_bulk_callback);
 set_to_generic_if_null(device, write_bulk_callback);
 set_to_generic_if_null(device, disconnect);
 set_to_generic_if_null(device, release);
}
