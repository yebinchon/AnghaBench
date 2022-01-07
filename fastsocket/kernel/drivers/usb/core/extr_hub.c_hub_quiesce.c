
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clear_work; scalar_t__ hub; } ;
struct usb_hub {int quiescing; TYPE_1__ tt; int leds; scalar_t__ has_indicators; int urb; int init_work; struct usb_device* hdev; } ;
struct usb_device {int maxchild; scalar_t__* children; } ;
typedef enum hub_quiescing_type { ____Placeholder_hub_quiescing_type } hub_quiescing_type ;


 int HUB_SUSPEND ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int usb_disconnect (scalar_t__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void hub_quiesce(struct usb_hub *hub, enum hub_quiescing_type type)
{
 struct usb_device *hdev = hub->hdev;
 int i;

 cancel_delayed_work_sync(&hub->init_work);


 hub->quiescing = 1;

 if (type != HUB_SUSPEND) {

  for (i = 0; i < hdev->maxchild; ++i) {
   if (hdev->children[i])
    usb_disconnect(&hdev->children[i]);
  }
 }


 usb_kill_urb(hub->urb);
 if (hub->has_indicators)
  cancel_delayed_work_sync(&hub->leds);
 if (hub->tt.hub)
  cancel_work_sync(&hub->tt.clear_work);
}
