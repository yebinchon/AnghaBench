
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whiteheat_purge {int what; scalar_t__ port; } ;
struct usb_serial_port {TYPE_1__* serial; scalar_t__ number; } ;
typedef int purge_command ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ minor; } ;


 int WHITEHEAT_PURGE ;
 int firm_send_command (struct usb_serial_port*,int ,int *,int) ;

__attribute__((used)) static int firm_purge(struct usb_serial_port *port, __u8 rxtx)
{
 struct whiteheat_purge purge_command;

 purge_command.port = port->number - port->serial->minor + 1;
 purge_command.what = rxtx;
 return firm_send_command(port, WHITEHEAT_PURGE,
   (__u8 *)&purge_command, sizeof(purge_command));
}
