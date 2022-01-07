
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct wusbhc {struct usb_encryption_descriptor* ccm1_etd; } ;
struct usb_security_descriptor {int wTotalLength; } ;
struct usb_encryption_descriptor {int bLength; int bEncryptionValue; int bEncryptionType; } ;
struct device {int dummy; } ;
struct usb_device {TYPE_3__* actconfig; void** rawdescriptors; TYPE_3__* config; struct device dev; } ;
struct TYPE_4__ {struct usb_device* usb_dev; } ;
struct hwahc {TYPE_1__ wa; struct wusbhc wusbhc; } ;
typedef int buf ;
struct TYPE_5__ {int wTotalLength; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 int USB_DT_SECURITY ;
 int __usb_get_extra_descriptor (void*,size_t,int ,void**) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*) ;
 int dev_warn (struct device*,char*) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ snprintf (char*,int,char*,char*,int) ;
 char* wusb_et_name (int ) ;

__attribute__((used)) static int hwahc_security_create(struct hwahc *hwahc)
{
 int result;
 struct wusbhc *wusbhc = &hwahc->wusbhc;
 struct usb_device *usb_dev = hwahc->wa.usb_dev;
 struct device *dev = &usb_dev->dev;
 struct usb_security_descriptor *secd;
 struct usb_encryption_descriptor *etd;
 void *itr, *top;
 size_t itr_size, needed, bytes;
 u8 index;
 char buf[64];


 index = (usb_dev->actconfig - usb_dev->config) /
  sizeof(usb_dev->config[0]);
 itr = usb_dev->rawdescriptors[index];
 itr_size = le16_to_cpu(usb_dev->actconfig->desc.wTotalLength);
 top = itr + itr_size;
 result = __usb_get_extra_descriptor(usb_dev->rawdescriptors[index],
   le16_to_cpu(usb_dev->actconfig->desc.wTotalLength),
   USB_DT_SECURITY, (void **) &secd);
 if (result == -1) {
  dev_warn(dev, "BUG? WUSB host has no security descriptors\n");
  return 0;
 }
 needed = sizeof(*secd);
 if (top - (void *)secd < needed) {
  dev_err(dev, "BUG? Not enough data to process security "
   "descriptor header (%zu bytes left vs %zu needed)\n",
   top - (void *) secd, needed);
  return 0;
 }
 needed = le16_to_cpu(secd->wTotalLength);
 if (top - (void *)secd < needed) {
  dev_err(dev, "BUG? Not enough data to process security "
   "descriptors (%zu bytes left vs %zu needed)\n",
   top - (void *) secd, needed);
  return 0;
 }

 itr = (void *) secd + sizeof(*secd);
 top = (void *) secd + le16_to_cpu(secd->wTotalLength);
 index = 0;
 bytes = 0;
 while (itr < top) {
  etd = itr;
  if (top - itr < sizeof(*etd)) {
   dev_err(dev, "BUG: bad host security descriptor; "
    "not enough data (%zu vs %zu left)\n",
    top - itr, sizeof(*etd));
   break;
  }
  if (etd->bLength < sizeof(*etd)) {
   dev_err(dev, "BUG: bad host encryption descriptor; "
    "descriptor is too short "
    "(%zu vs %zu needed)\n",
    (size_t)etd->bLength, sizeof(*etd));
   break;
  }
  itr += etd->bLength;
  bytes += snprintf(buf + bytes, sizeof(buf) - bytes,
      "%s (0x%02x) ",
      wusb_et_name(etd->bEncryptionType),
      etd->bEncryptionValue);
  wusbhc->ccm1_etd = etd;
 }
 dev_info(dev, "supported encryption types: %s\n", buf);
 if (wusbhc->ccm1_etd == ((void*)0)) {
  dev_err(dev, "E: host doesn't support CCM-1 crypto\n");
  return 0;
 }

 return 0;
}
