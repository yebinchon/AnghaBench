
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {struct device* dev; } ;
struct wusb_dn_hdr {int bType; } ;
struct wusb_dev {int dummy; } ;
struct device {int dummy; } ;
 int dev_dbg (struct device*,char*,int,int ) ;
 int dev_err (struct device*,char*,int,int) ;
 int dev_warn (struct device*,char*,int,int,int ) ;
 struct wusb_dev* wusbhc_find_dev_by_addr (struct wusbhc*,int ) ;
 int wusbhc_handle_dn_alive (struct wusbhc*,struct wusb_dev*) ;
 int wusbhc_handle_dn_connect (struct wusbhc*,struct wusb_dn_hdr*,size_t) ;
 int wusbhc_handle_dn_disconnect (struct wusbhc*,struct wusb_dev*) ;

void wusbhc_handle_dn(struct wusbhc *wusbhc, u8 srcaddr,
        struct wusb_dn_hdr *dn_hdr, size_t size)
{
 struct device *dev = wusbhc->dev;
 struct wusb_dev *wusb_dev;

 if (size < sizeof(struct wusb_dn_hdr)) {
  dev_err(dev, "DN data shorter than DN header (%d < %d)\n",
   (int)size, (int)sizeof(struct wusb_dn_hdr));
  return;
 }

 wusb_dev = wusbhc_find_dev_by_addr(wusbhc, srcaddr);
 if (wusb_dev == ((void*)0) && dn_hdr->bType != 133) {
  dev_dbg(dev, "ignoring DN %d from unconnected device %02x\n",
   dn_hdr->bType, srcaddr);
  return;
 }

 switch (dn_hdr->bType) {
 case 133:
  wusbhc_handle_dn_connect(wusbhc, dn_hdr, size);
  break;
 case 134:
  wusbhc_handle_dn_alive(wusbhc, wusb_dev);
  break;
 case 132:
  wusbhc_handle_dn_disconnect(wusbhc, wusb_dev);
  break;
 case 130:
 case 129:
 case 128:

  break;
 case 131:

  break;
 default:
  dev_warn(dev, "unknown DN %u (%d octets) from %u\n",
    dn_hdr->bType, (int)size, srcaddr);
 }
}
