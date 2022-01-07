
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_hub {int disconnected; int kref; int buffer; int status; int descriptor; int port_owners; int urb; TYPE_1__* hdev; scalar_t__ error; int event_list; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ maxchild; } ;


 int HUB_DISCONNECT ;
 scalar_t__ USB_SPEED_HIGH ;
 int highspeed_hubs ;
 int hub_event_lock ;
 int hub_quiesce (struct usb_hub*,int ) ;
 int hub_release ;
 int kfree (int ) ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (int ) ;
 struct usb_hub* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void hub_disconnect(struct usb_interface *intf)
{
 struct usb_hub *hub = usb_get_intfdata (intf);


 spin_lock_irq(&hub_event_lock);
 list_del_init(&hub->event_list);
 hub->disconnected = 1;
 spin_unlock_irq(&hub_event_lock);


 hub->error = 0;
 hub_quiesce(hub, HUB_DISCONNECT);

 usb_set_intfdata (intf, ((void*)0));
 hub->hdev->maxchild = 0;

 if (hub->hdev->speed == USB_SPEED_HIGH)
  highspeed_hubs--;

 usb_free_urb(hub->urb);
 kfree(hub->port_owners);
 kfree(hub->descriptor);
 kfree(hub->status);
 kfree(hub->buffer);

 kref_put(&hub->kref, hub_release);
}
