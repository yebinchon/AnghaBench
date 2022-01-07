
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int dummy; } ;
struct usb_device {int dummy; } ;


 struct usb_hub* hdev_to_hub (struct usb_device*) ;
 int kick_khubd (struct usb_hub*) ;

void usb_kick_khubd(struct usb_device *hdev)
{
 struct usb_hub *hub = hdev_to_hub(hdev);

 if (hub)
  kick_khubd(hub);
}
