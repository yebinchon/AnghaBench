
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {scalar_t__ ports_max; int uwb_rc; int set_gtk; int set_ptk; int set_num_dnts; int bwa_set; int dev_info_set; int mmcie_rm; int mmcie_add; int stop; int start; int mmcies_max; struct device* dev; } ;
struct whc {scalar_t__ n_devices; struct umc_dev* umc; int n_mmc_ies; } ;
struct TYPE_2__ {int sg_tablesize; } ;
struct usb_hcd {int wireless; TYPE_1__ self; } ;
struct device {int parent; } ;
struct umc_dev {int irq; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int IRQF_SHARED ;
 scalar_t__ USB_MAXCHILDREN ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,scalar_t__) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (int *,struct device*,char*) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int uwb_rc_get_by_grandpa (int ) ;
 int uwb_rc_put (int ) ;
 int whc_bwa_set ;
 int whc_clean_up (struct whc*) ;
 int whc_dbg_init (struct whc*) ;
 int whc_dev_info_set ;
 int whc_hc_driver ;
 int whc_init (struct whc*) ;
 int whc_mmcie_add ;
 int whc_mmcie_rm ;
 int whc_set_gtk ;
 int whc_set_num_dnts ;
 int whc_set_ptk ;
 int whc_wusbhc_start ;
 int whc_wusbhc_stop ;
 int wusbhc_b_create (struct wusbhc*) ;
 int wusbhc_create (struct wusbhc*) ;
 int wusbhc_destroy (struct wusbhc*) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static int whc_probe(struct umc_dev *umc)
{
 int ret = -ENOMEM;
 struct usb_hcd *usb_hcd;
 struct wusbhc *wusbhc = ((void*)0);
 struct whc *whc = ((void*)0);
 struct device *dev = &umc->dev;

 usb_hcd = usb_create_hcd(&whc_hc_driver, dev, "whci");
 if (usb_hcd == ((void*)0)) {
  dev_err(dev, "unable to create hcd\n");
  goto error;
 }

 usb_hcd->wireless = 1;
 usb_hcd->self.sg_tablesize = 2048;

 wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 whc = wusbhc_to_whc(wusbhc);
 whc->umc = umc;

 ret = whc_init(whc);
 if (ret)
  goto error;

 wusbhc->dev = dev;
 wusbhc->uwb_rc = uwb_rc_get_by_grandpa(umc->dev.parent);
 if (!wusbhc->uwb_rc) {
  ret = -ENODEV;
  dev_err(dev, "cannot get radio controller\n");
  goto error;
 }

 if (whc->n_devices > USB_MAXCHILDREN) {
  dev_warn(dev, "USB_MAXCHILDREN too low for WUSB adapter (%u ports)\n",
    whc->n_devices);
  wusbhc->ports_max = USB_MAXCHILDREN;
 } else
  wusbhc->ports_max = whc->n_devices;
 wusbhc->mmcies_max = whc->n_mmc_ies;
 wusbhc->start = whc_wusbhc_start;
 wusbhc->stop = whc_wusbhc_stop;
 wusbhc->mmcie_add = whc_mmcie_add;
 wusbhc->mmcie_rm = whc_mmcie_rm;
 wusbhc->dev_info_set = whc_dev_info_set;
 wusbhc->bwa_set = whc_bwa_set;
 wusbhc->set_num_dnts = whc_set_num_dnts;
 wusbhc->set_ptk = whc_set_ptk;
 wusbhc->set_gtk = whc_set_gtk;

 ret = wusbhc_create(wusbhc);
 if (ret)
  goto error_wusbhc_create;

 ret = usb_add_hcd(usb_hcd, whc->umc->irq, IRQF_SHARED);
 if (ret) {
  dev_err(dev, "cannot add HCD: %d\n", ret);
  goto error_usb_add_hcd;
 }

 ret = wusbhc_b_create(wusbhc);
 if (ret) {
  dev_err(dev, "WUSBHC phase B setup failed: %d\n", ret);
  goto error_wusbhc_b_create;
 }

 whc_dbg_init(whc);

 return 0;

error_wusbhc_b_create:
 usb_remove_hcd(usb_hcd);
error_usb_add_hcd:
 wusbhc_destroy(wusbhc);
error_wusbhc_create:
 uwb_rc_put(wusbhc->uwb_rc);
error:
 whc_clean_up(whc);
 if (usb_hcd)
  usb_put_hcd(usb_hcd);
 return ret;
}
