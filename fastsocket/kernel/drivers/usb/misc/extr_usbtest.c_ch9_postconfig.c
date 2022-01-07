
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usbtest_dev {int* buf; struct usb_interface* intf; } ;
struct usb_qualifier_descriptor {unsigned int bNumConfigurations; } ;
struct usb_interface {int num_altsetting; int dev; TYPE_5__* altsetting; } ;
struct TYPE_8__ {int bNumConfigurations; int bcdUSB; } ;
struct usb_device {scalar_t__ speed; TYPE_3__ descriptor; TYPE_2__* actconfig; } ;
struct TYPE_9__ {int bAlternateSetting; int bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_4__ desc; } ;
struct TYPE_6__ {int bConfigurationValue; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int EDOM ;
 int EPIPE ;
 int TBUF_SIZE ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DT_CONFIG ;
 int USB_DT_DEVICE ;
 int USB_DT_DEVICE_QUALIFIER ;
 int USB_DT_OTHER_SPEED_CONFIG ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_CONFIGURATION ;
 scalar_t__ USB_SPEED_HIGH ;
 int dev_err (int *,char*,int,...) ;
 int get_altsetting (struct usbtest_dev*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int is_good_config (struct usbtest_dev*,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ realworld ;
 int set_altsetting (struct usbtest_dev*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_get_descriptor (struct usb_device*,int ,int,int*,int) ;
 int usb_get_status (struct usb_device*,int,int ,int*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ch9_postconfig (struct usbtest_dev *dev)
{
 struct usb_interface *iface = dev->intf;
 struct usb_device *udev = interface_to_usbdev (iface);
 int i, alt, retval;




 for (i = 0; i < iface->num_altsetting; i++) {


  alt = iface->altsetting [i].desc.bAlternateSetting;
  if (alt < 0 || alt >= iface->num_altsetting) {
   dev_err(&iface->dev,
     "invalid alt [%d].bAltSetting = %d\n",
     i, alt);
  }


  if (realworld && iface->num_altsetting == 1)
   continue;


  retval = set_altsetting (dev, alt);
  if (retval) {
   dev_err(&iface->dev, "can't set_interface = %d, %d\n",
     alt, retval);
   return retval;
  }


  retval = get_altsetting (dev);
  if (retval != alt) {
   dev_err(&iface->dev, "get alt should be %d, was %d\n",
     alt, retval);
   return (retval < 0) ? retval : -EDOM;
  }

 }


 if (!realworld || udev->descriptor.bNumConfigurations != 1) {
  int expected = udev->actconfig->desc.bConfigurationValue;





  retval = usb_control_msg (udev, usb_rcvctrlpipe (udev, 0),
    USB_REQ_GET_CONFIGURATION,
    USB_DIR_IN | USB_RECIP_DEVICE,
    0, 0, dev->buf, 1, USB_CTRL_GET_TIMEOUT);
  if (retval != 1 || dev->buf [0] != expected) {
   dev_err(&iface->dev, "get config --> %d %d (1 %d)\n",
    retval, dev->buf[0], expected);
   return (retval < 0) ? retval : -EDOM;
  }
 }


 retval = usb_get_descriptor (udev, USB_DT_DEVICE, 0,
   dev->buf, sizeof udev->descriptor);
 if (retval != sizeof udev->descriptor) {
  dev_err(&iface->dev, "dev descriptor --> %d\n", retval);
  return (retval < 0) ? retval : -EDOM;
 }


 for (i = 0; i < udev->descriptor.bNumConfigurations; i++) {
  retval = usb_get_descriptor (udev, USB_DT_CONFIG, i,
    dev->buf, TBUF_SIZE);
  if (!is_good_config(dev, retval)) {
   dev_err(&iface->dev,
     "config [%d] descriptor --> %d\n",
     i, retval);
   return (retval < 0) ? retval : -EDOM;
  }



 }


 if (le16_to_cpu(udev->descriptor.bcdUSB) == 0x0200) {
  struct usb_qualifier_descriptor *d = ((void*)0);


  retval = usb_get_descriptor (udev,
    USB_DT_DEVICE_QUALIFIER, 0, dev->buf,
    sizeof (struct usb_qualifier_descriptor));
  if (retval == -EPIPE) {
   if (udev->speed == USB_SPEED_HIGH) {
    dev_err(&iface->dev,
      "hs dev qualifier --> %d\n",
      retval);
    return (retval < 0) ? retval : -EDOM;
   }

  } else if (retval != sizeof (struct usb_qualifier_descriptor)) {
   dev_err(&iface->dev, "dev qualifier --> %d\n", retval);
   return (retval < 0) ? retval : -EDOM;
  } else
   d = (struct usb_qualifier_descriptor *) dev->buf;


  if (d) {
   unsigned max = d->bNumConfigurations;
   for (i = 0; i < max; i++) {
    retval = usb_get_descriptor (udev,
     USB_DT_OTHER_SPEED_CONFIG, i,
     dev->buf, TBUF_SIZE);
    if (!is_good_config(dev, retval)) {
     dev_err(&iface->dev,
      "other speed config --> %d\n",
      retval);
     return (retval < 0) ? retval : -EDOM;
    }
   }
  }
 }



 retval = usb_get_status (udev, USB_RECIP_DEVICE, 0, dev->buf);
 if (retval != 2) {
  dev_err(&iface->dev, "get dev status --> %d\n", retval);
  return (retval < 0) ? retval : -EDOM;
 }




 retval = usb_get_status (udev, USB_RECIP_INTERFACE,
   iface->altsetting [0].desc.bInterfaceNumber, dev->buf);
 if (retval != 2) {
  dev_err(&iface->dev, "get interface status --> %d\n", retval);
  return (retval < 0) ? retval : -EDOM;
 }


 return 0;
}
