
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_hub {int dummy; } ;


 int HUB_POST_RESET ;
 int hub_activate (struct usb_hub*,int ) ;
 struct usb_hub* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int hub_post_reset(struct usb_interface *intf)
{
 struct usb_hub *hub = usb_get_intfdata(intf);

 hub_activate(hub, HUB_POST_RESET);
 return 0;
}
