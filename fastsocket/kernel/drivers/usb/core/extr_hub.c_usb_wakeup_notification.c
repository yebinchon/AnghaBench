
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int wakeup_bits; } ;
struct usb_device {int dummy; } ;


 struct usb_hub* hdev_to_hub (struct usb_device*) ;
 int kick_khubd (struct usb_hub*) ;
 int set_bit (unsigned int,int ) ;

void usb_wakeup_notification(struct usb_device *hdev,
  unsigned int portnum)
{
 struct usb_hub *hub;

 if (!hdev)
  return;

 hub = hdev_to_hub(hdev);
 if (hub) {
  set_bit(portnum, hub->wakeup_bits);
  kick_khubd(hub);
 }
}
