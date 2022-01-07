
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wusbhc {int cluster_id; } ;
struct wahc {TYPE_3__* usb_iface; int usb_dev; } ;
struct hwahc {struct wahc wa; struct wusbhc wusbhc; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int WUSB_REQ_SET_CLUSTER_ID ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_info (struct device*,char*,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int __hwahc_set_cluster_id(struct hwahc *hwahc, u8 cluster_id)
{
 int result;
 struct wusbhc *wusbhc = &hwahc->wusbhc;
 struct wahc *wa = &hwahc->wa;
 struct device *dev = &wa->usb_iface->dev;

 result = usb_control_msg(wa->usb_dev, usb_sndctrlpipe(wa->usb_dev, 0),
   WUSB_REQ_SET_CLUSTER_ID,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   cluster_id,
   wa->usb_iface->cur_altsetting->desc.bInterfaceNumber,
   ((void*)0), 0, 1000 );
 if (result < 0)
  dev_err(dev, "Cannot set WUSB Cluster ID to 0x%02x: %d\n",
   cluster_id, result);
 else
  wusbhc->cluster_id = cluster_id;
 dev_info(dev, "Wireless USB Cluster ID set to 0x%02x\n", cluster_id);
 return result;
}
