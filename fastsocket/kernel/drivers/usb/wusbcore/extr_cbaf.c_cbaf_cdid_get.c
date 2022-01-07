
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wusb_cbaf_device_info {int BandGroups; int CDID; int DeviceFriendlyName; int Length; } ;
struct device {int dummy; } ;
struct cbaf {int device_band_groups; int cdid; int device_name; int buffer_size; TYPE_3__* usb_iface; int usb_dev; struct wusb_cbaf_device_info* buffer; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int CBAF_REQ_GET_ASSOCIATION_REQUEST ;
 int CBA_NAME_LEN ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_err (struct device*,char*,size_t,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int strlcpy (int ,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,struct wusb_cbaf_device_info*,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int cbaf_cdid_get(struct cbaf *cbaf)
{
 int result;
 struct device *dev = &cbaf->usb_iface->dev;
 struct wusb_cbaf_device_info *di;
 size_t needed;

 di = cbaf->buffer;
 result = usb_control_msg(
  cbaf->usb_dev, usb_rcvctrlpipe(cbaf->usb_dev, 0),
  CBAF_REQ_GET_ASSOCIATION_REQUEST,
  USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0x0200, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  di, cbaf->buffer_size, 1000 );
 if (result < 0) {
  dev_err(dev, "Cannot request device information: %d\n", result);
  return result;
 }

 needed = result < sizeof(*di) ? sizeof(*di) : le32_to_cpu(di->Length);
 if (result < needed) {
  dev_err(dev, "Not enough data in DEVICE_INFO reply (%zu vs "
   "%zu bytes needed)\n", (size_t)result, needed);
  return result;
 }

 strlcpy(cbaf->device_name, di->DeviceFriendlyName, CBA_NAME_LEN);
 cbaf->cdid = di->CDID;
 cbaf->device_band_groups = le16_to_cpu(di->BandGroups);

 return 0;
}
