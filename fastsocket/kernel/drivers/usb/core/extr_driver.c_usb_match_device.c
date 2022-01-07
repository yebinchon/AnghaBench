
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int match_flags; scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bcdDevice_lo; scalar_t__ bcdDevice_hi; scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 int USB_DEVICE_ID_MATCH_DEV_CLASS ;
 int USB_DEVICE_ID_MATCH_DEV_HI ;
 int USB_DEVICE_ID_MATCH_DEV_LO ;
 int USB_DEVICE_ID_MATCH_DEV_PROTOCOL ;
 int USB_DEVICE_ID_MATCH_DEV_SUBCLASS ;
 int USB_DEVICE_ID_MATCH_PRODUCT ;
 int USB_DEVICE_ID_MATCH_VENDOR ;
 scalar_t__ le16_to_cpu (int ) ;

int usb_match_device(struct usb_device *dev, const struct usb_device_id *id)
{
 if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
     id->idVendor != le16_to_cpu(dev->descriptor.idVendor))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
     id->idProduct != le16_to_cpu(dev->descriptor.idProduct))
  return 0;



 if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO) &&
     (id->bcdDevice_lo > le16_to_cpu(dev->descriptor.bcdDevice)))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI) &&
     (id->bcdDevice_hi < le16_to_cpu(dev->descriptor.bcdDevice)))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_CLASS) &&
     (id->bDeviceClass != dev->descriptor.bDeviceClass))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_SUBCLASS) &&
     (id->bDeviceSubClass != dev->descriptor.bDeviceSubClass))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_PROTOCOL) &&
     (id->bDeviceProtocol != dev->descriptor.bDeviceProtocol))
  return 0;

 return 1;
}
