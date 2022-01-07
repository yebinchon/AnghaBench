
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct usb_interface {int dummy; } ;
struct hwarc {int usb_dev; int usb_iface; struct uwb_rc* uwb_rc; } ;


 int kfree (struct hwarc*) ;
 struct hwarc* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (int ) ;
 int usb_set_intfdata (int ,int *) ;
 int uwb_rc_put (struct uwb_rc*) ;
 int uwb_rc_rm (struct uwb_rc*) ;

__attribute__((used)) static void hwarc_disconnect(struct usb_interface *iface)
{
 struct hwarc *hwarc = usb_get_intfdata(iface);
 struct uwb_rc *uwb_rc = hwarc->uwb_rc;

 usb_set_intfdata(hwarc->usb_iface, ((void*)0));
 uwb_rc_rm(uwb_rc);
 usb_put_intf(hwarc->usb_iface);
 usb_put_dev(hwarc->usb_dev);
 kfree(hwarc);
 uwb_rc_put(uwb_rc);
}
