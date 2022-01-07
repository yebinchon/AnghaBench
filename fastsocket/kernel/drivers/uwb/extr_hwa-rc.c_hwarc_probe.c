
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int * filter_event; int * filter_cmd; int reset; int cmd; int stop; int start; int owner; } ;
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int driver_info; } ;
struct hwarc {int usb_dev; struct uwb_rc* uwb_rc; int usb_iface; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int WUSB_QUIRK_WHCI_CMD_EVT ;
 int dev_err (struct device*,char*) ;
 int hwarc_cmd ;
 int * hwarc_filter_cmd ;
 int * hwarc_filter_event ;
 int hwarc_get_version (struct uwb_rc*) ;
 int hwarc_init (struct hwarc*) ;
 int hwarc_neep_init ;
 int hwarc_neep_release ;
 int hwarc_reset ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct hwarc* kzalloc (int,int ) ;
 int usb_get_dev (int ) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct hwarc*) ;
 int uwb_rc_add (struct uwb_rc*,struct device*,struct hwarc*) ;
 struct uwb_rc* uwb_rc_alloc () ;
 int uwb_rc_put (struct uwb_rc*) ;
 int uwb_rc_rm (struct uwb_rc*) ;

__attribute__((used)) static int hwarc_probe(struct usb_interface *iface,
         const struct usb_device_id *id)
{
 int result;
 struct uwb_rc *uwb_rc;
 struct hwarc *hwarc;
 struct device *dev = &iface->dev;

 result = -ENOMEM;
 uwb_rc = uwb_rc_alloc();
 if (uwb_rc == ((void*)0)) {
  dev_err(dev, "unable to allocate RC instance\n");
  goto error_rc_alloc;
 }
 hwarc = kzalloc(sizeof(*hwarc), GFP_KERNEL);
 if (hwarc == ((void*)0)) {
  dev_err(dev, "unable to allocate HWA RC instance\n");
  goto error_alloc;
 }
 hwarc_init(hwarc);
 hwarc->usb_dev = usb_get_dev(interface_to_usbdev(iface));
 hwarc->usb_iface = usb_get_intf(iface);
 hwarc->uwb_rc = uwb_rc;

 uwb_rc->owner = THIS_MODULE;
 uwb_rc->start = hwarc_neep_init;
 uwb_rc->stop = hwarc_neep_release;
 uwb_rc->cmd = hwarc_cmd;
 uwb_rc->reset = hwarc_reset;
 if (id->driver_info & WUSB_QUIRK_WHCI_CMD_EVT) {
  uwb_rc->filter_cmd = ((void*)0);
  uwb_rc->filter_event = ((void*)0);
 } else {
  uwb_rc->filter_cmd = hwarc_filter_cmd;
  uwb_rc->filter_event = hwarc_filter_event;
 }

 result = uwb_rc_add(uwb_rc, dev, hwarc);
 if (result < 0)
  goto error_rc_add;
 result = hwarc_get_version(uwb_rc);
 if (result < 0) {
  dev_err(dev, "cannot retrieve version of RC \n");
  goto error_get_version;
 }
 usb_set_intfdata(iface, hwarc);
 return 0;

error_get_version:
 uwb_rc_rm(uwb_rc);
error_rc_add:
 usb_put_intf(iface);
 usb_put_dev(hwarc->usb_dev);
error_alloc:
 uwb_rc_put(uwb_rc);
error_rc_alloc:
 return result;
}
