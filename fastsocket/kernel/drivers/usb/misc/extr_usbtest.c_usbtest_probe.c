
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usbtest_info {int alt; int ctrl_out; int name; scalar_t__ ep_out; scalar_t__ ep_in; scalar_t__ autoconf; } ;
struct usbtest_dev {scalar_t__ out_iso_pipe; scalar_t__ in_iso_pipe; scalar_t__ out_pipe; scalar_t__ in_pipe; int * buf; struct usb_interface* intf; int lock; struct usbtest_info* info; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {scalar_t__ match_flags; scalar_t__ driver_info; } ;
struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {int speed; TYPE_1__ descriptor; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TBUF_SIZE ;



 int WARNING (struct usbtest_dev*,char*,int) ;
 int dev_info (int *,char*,scalar_t__,...) ;
 scalar_t__ force_interrupt ;
 int get_endpoints (struct usbtest_dev*,struct usb_interface*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usbtest_dev*) ;
 int * kmalloc (int ,int ) ;
 struct usbtest_dev* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 scalar_t__ product ;
 scalar_t__ usb_rcvbulkpipe (struct usb_device*,scalar_t__) ;
 scalar_t__ usb_rcvintpipe (struct usb_device*,scalar_t__) ;
 int usb_set_intfdata (struct usb_interface*,struct usbtest_dev*) ;
 scalar_t__ usb_sndbulkpipe (struct usb_device*,scalar_t__) ;
 scalar_t__ usb_sndintpipe (struct usb_device*,scalar_t__) ;
 scalar_t__ vendor ;

__attribute__((used)) static int
usbtest_probe (struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *udev;
 struct usbtest_dev *dev;
 struct usbtest_info *info;
 char *rtest, *wtest;
 char *irtest, *iwtest;

 udev = interface_to_usbdev (intf);
 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;
 info = (struct usbtest_info *) id->driver_info;
 dev->info = info;
 mutex_init(&dev->lock);

 dev->intf = intf;


 if ((dev->buf = kmalloc (TBUF_SIZE, GFP_KERNEL)) == ((void*)0)) {
  kfree (dev);
  return -ENOMEM;
 }





 rtest = wtest = "";
 irtest = iwtest = "";
 if (force_interrupt || udev->speed == 128) {
  if (info->ep_in) {
   dev->in_pipe = usb_rcvintpipe (udev, info->ep_in);
   rtest = " intr-in";
  }
  if (info->ep_out) {
   dev->out_pipe = usb_sndintpipe (udev, info->ep_out);
   wtest = " intr-out";
  }
 } else {
  if (info->autoconf) {
   int status;

   status = get_endpoints (dev, intf);
   if (status < 0) {
    WARNING(dev, "couldn't get endpoints, %d\n",
      status);
    return status;
   }

  } else {
   if (info->ep_in)
    dev->in_pipe = usb_rcvbulkpipe (udev,
       info->ep_in);
   if (info->ep_out)
    dev->out_pipe = usb_sndbulkpipe (udev,
       info->ep_out);
  }
  if (dev->in_pipe)
   rtest = " bulk-in";
  if (dev->out_pipe)
   wtest = " bulk-out";
  if (dev->in_iso_pipe)
   irtest = " iso-in";
  if (dev->out_iso_pipe)
   iwtest = " iso-out";
 }

 usb_set_intfdata (intf, dev);
 dev_info (&intf->dev, "%s\n", info->name);
 dev_info (&intf->dev, "%s speed {control%s%s%s%s%s} tests%s\n",
   ({ char *tmp;
   switch (udev->speed) {
   case 128: tmp = "low"; break;
   case 130: tmp = "full"; break;
   case 129: tmp = "high"; break;
   default: tmp = "unknown"; break;
   }; tmp; }),
   info->ctrl_out ? " in/out" : "",
   rtest, wtest,
   irtest, iwtest,
   info->alt >= 0 ? " (+alt)" : "");
 return 0;
}
