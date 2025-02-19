
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whiteheat_set_rdb {int state; scalar_t__ port; } ;
struct usb_serial_port {TYPE_1__* serial; scalar_t__ number; } ;
typedef int dtr_command ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ minor; } ;


 int WHITEHEAT_SET_DTR ;
 int firm_send_command (struct usb_serial_port*,int ,int *,int) ;

__attribute__((used)) static int firm_set_dtr(struct usb_serial_port *port, __u8 onoff)
{
 struct whiteheat_set_rdb dtr_command;

 dtr_command.port = port->number - port->serial->minor + 1;
 dtr_command.state = onoff;
 return firm_send_command(port, WHITEHEAT_SET_DTR,
   (__u8 *)&dtr_command, sizeof(dtr_command));
}
