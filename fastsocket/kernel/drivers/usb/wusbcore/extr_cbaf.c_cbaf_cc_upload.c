
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wusb_cbaf_cc_data {int CDID; int CHID; int BandGroups; int CK; } ;
struct device {int dummy; } ;
struct cbaf {char* host_band_groups; TYPE_3__* usb_iface; int usb_dev; int ck; int cdid; int chid; struct wusb_cbaf_cc_data* buffer; } ;
typedef int pr_cdid ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int CBAF_REQ_SET_ASSOCIATION_RESPONSE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int WUSB_CKHDID_STRSIZE ;
 struct wusb_cbaf_cc_data cbaf_cc_data_defaults ;
 int ckhdid_printf (char*,int,int *) ;
 int cpu_to_le16 (char*) ;
 int dev_dbg (struct device*,char*,...) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,struct wusb_cbaf_cc_data*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int cbaf_cc_upload(struct cbaf *cbaf)
{
 int result;
 struct device *dev = &cbaf->usb_iface->dev;
 struct wusb_cbaf_cc_data *ccd;
 char pr_cdid[WUSB_CKHDID_STRSIZE];

 ccd = cbaf->buffer;
 *ccd = cbaf_cc_data_defaults;
 ccd->CHID = cbaf->chid;
 ccd->CDID = cbaf->cdid;
 ccd->CK = cbaf->ck;
 ccd->BandGroups = cpu_to_le16(cbaf->host_band_groups);

 dev_dbg(dev, "Trying to upload CC:\n");
 ckhdid_printf(pr_cdid, sizeof(pr_cdid), &ccd->CHID);
 dev_dbg(dev, "  CHID       %s\n", pr_cdid);
 ckhdid_printf(pr_cdid, sizeof(pr_cdid), &ccd->CDID);
 dev_dbg(dev, "  CDID       %s\n", pr_cdid);
 dev_dbg(dev, "  Bandgroups 0x%04x\n", cbaf->host_band_groups);

 result = usb_control_msg(
  cbaf->usb_dev, usb_sndctrlpipe(cbaf->usb_dev, 0),
  CBAF_REQ_SET_ASSOCIATION_RESPONSE,
  USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0x0201, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  ccd, sizeof(*ccd), 1000 );

 return result;
}
