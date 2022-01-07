
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int mutex; int cluster_id; } ;
struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int WUSBCMD_RUN ;
 scalar_t__ WUSBINTR ;
 scalar_t__ WUSBSTS ;
 int WUSBSTS_HCHALTED ;
 int le_writel (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;
 int whci_wait_for (int *,scalar_t__,int ,int ,int,char*) ;
 int wusb_cluster_id_put (int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static void whc_stop(struct usb_hcd *usb_hcd)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);

 mutex_lock(&wusbhc->mutex);


 le_writel(0, whc->base + WUSBINTR);
 whc_write_wusbcmd(whc, WUSBCMD_RUN, 0);
 whci_wait_for(&whc->umc->dev, whc->base + WUSBSTS,
        WUSBSTS_HCHALTED, WUSBSTS_HCHALTED,
        100, "HC to halt");

 wusb_cluster_id_put(wusbhc->cluster_id);

 mutex_unlock(&wusbhc->mutex);
}
