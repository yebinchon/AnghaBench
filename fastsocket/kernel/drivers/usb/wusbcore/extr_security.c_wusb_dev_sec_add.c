
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct usb_encryption_descriptor {int bLength; scalar_t__ bEncryptionType; int bEncryptionValue; int bAuthKeyIndex; } ;
struct wusb_dev {struct usb_encryption_descriptor ccm1_etd; } ;
struct usb_security_descriptor {int wTotalLength; } ;
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;
typedef int secd ;
typedef int buf ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DT_SECURITY ;
 scalar_t__ USB_ENC_TYPE_CCM_1 ;
 int dev_dbg (struct device*,char*,char*,char*,int,int) ;
 int dev_err (struct device*,char*,...) ;
 int kfree (struct usb_security_descriptor*) ;
 struct usb_security_descriptor* kmalloc (int,int ) ;
 struct usb_security_descriptor* krealloc (struct usb_security_descriptor*,int,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ snprintf (char*,int,char*,char*,int,int) ;
 int usb_get_descriptor (struct usb_device*,int ,int ,struct usb_security_descriptor*,int) ;
 char* wusb_et_name (scalar_t__) ;

int wusb_dev_sec_add(struct wusbhc *wusbhc,
       struct usb_device *usb_dev, struct wusb_dev *wusb_dev)
{
 int result, bytes, secd_size;
 struct device *dev = &usb_dev->dev;
 struct usb_security_descriptor *secd;
 const struct usb_encryption_descriptor *etd, *ccm1_etd = ((void*)0);
 const void *itr, *top;
 char buf[64];

 secd = kmalloc(sizeof(struct usb_security_descriptor), GFP_KERNEL);
 if (secd == ((void*)0)) {
  result = -ENOMEM;
  goto out;
 }

 result = usb_get_descriptor(usb_dev, USB_DT_SECURITY,
        0, secd, sizeof(struct usb_security_descriptor));
 if (result < sizeof(secd)) {
  dev_err(dev, "Can't read security descriptor or "
   "not enough data: %d\n", result);
  goto out;
 }
 secd_size = le16_to_cpu(secd->wTotalLength);
 secd = krealloc(secd, secd_size, GFP_KERNEL);
 if (secd == ((void*)0)) {
  dev_err(dev, "Can't allocate space for security descriptors\n");
  goto out;
 }
 result = usb_get_descriptor(usb_dev, USB_DT_SECURITY,
        0, secd, secd_size);
 if (result < secd_size) {
  dev_err(dev, "Can't read security descriptor or "
   "not enough data: %d\n", result);
  goto out;
 }
 bytes = 0;
 itr = &secd[1];
 top = (void *)secd + result;
 while (itr < top) {
  etd = itr;
  if (top - itr < sizeof(*etd)) {
   dev_err(dev, "BUG: bad device security descriptor; "
    "not enough data (%zu vs %zu bytes left)\n",
    top - itr, sizeof(*etd));
   break;
  }
  if (etd->bLength < sizeof(*etd)) {
   dev_err(dev, "BUG: bad device encryption descriptor; "
    "descriptor is too short "
    "(%u vs %zu needed)\n",
    etd->bLength, sizeof(*etd));
   break;
  }
  itr += etd->bLength;
  bytes += snprintf(buf + bytes, sizeof(buf) - bytes,
      "%s (0x%02x/%02x) ",
      wusb_et_name(etd->bEncryptionType),
      etd->bEncryptionValue, etd->bAuthKeyIndex);
  if (etd->bEncryptionType == USB_ENC_TYPE_CCM_1)
   ccm1_etd = etd;
 }



 if (ccm1_etd == ((void*)0)) {
  dev_err(dev, "WUSB device doesn't support CCM1 encryption, "
   "can't use!\n");
  result = -EINVAL;
  goto out;
 }
 wusb_dev->ccm1_etd = *ccm1_etd;
 dev_dbg(dev, "supported encryption: %s; using %s (0x%02x/%02x)\n",
  buf, wusb_et_name(ccm1_etd->bEncryptionType),
  ccm1_etd->bEncryptionValue, ccm1_etd->bAuthKeyIndex);
 result = 0;
out:
 kfree(secd);
 return result;
}
