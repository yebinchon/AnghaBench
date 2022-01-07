
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct moschip_port {int dummy; } ;


 scalar_t__ usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static inline struct moschip_port *mos7840_get_port_private(struct
           usb_serial_port
           *port)
{
 return (struct moschip_port *)usb_get_serial_port_data(port);
}
