
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int change_bits; int intfdev; } ;


 int dev_dbg (int ,char*,int) ;
 int hub_port_disable (struct usb_hub*,int,int) ;
 int kick_khubd (struct usb_hub*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void hub_port_logical_disconnect(struct usb_hub *hub, int port1)
{
 dev_dbg(hub->intfdev, "logical disconnect on port %d\n", port1);
 hub_port_disable(hub, port1, 1);
 set_bit(port1, hub->change_bits);
  kick_khubd(hub);
}
