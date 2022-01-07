
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {scalar_t__ active; int dev; } ;
struct wusb_port {int status; int change; struct wusb_dev* wusb_dev; } ;
struct wusb_dev {int cack_node; int port_idx; } ;


 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_C_ENABLE ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;
 int USB_PORT_STAT_RESET ;
 int USB_PORT_STAT_SUSPEND ;
 int dev_dbg (int ,char*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int wusb_dev_put (struct wusb_dev*) ;
 int wusbhc_gtk_rekey (struct wusbhc*) ;

__attribute__((used)) static void __wusbhc_dev_disconnect(struct wusbhc *wusbhc,
        struct wusb_port *port)
{
 struct wusb_dev *wusb_dev = port->wusb_dev;

 port->status &= ~(USB_PORT_STAT_CONNECTION | USB_PORT_STAT_ENABLE
     | USB_PORT_STAT_SUSPEND | USB_PORT_STAT_RESET
     | USB_PORT_STAT_LOW_SPEED | USB_PORT_STAT_HIGH_SPEED);
 port->change |= USB_PORT_STAT_C_CONNECTION | USB_PORT_STAT_C_ENABLE;
 if (wusb_dev) {
  dev_dbg(wusbhc->dev, "disconnecting device from port %d\n", wusb_dev->port_idx);
  if (!list_empty(&wusb_dev->cack_node))
   list_del_init(&wusb_dev->cack_node);

  wusb_dev_put(wusb_dev);
 }
 port->wusb_dev = ((void*)0);



 if (wusbhc->active)
  wusbhc_gtk_rekey(wusbhc);





}
