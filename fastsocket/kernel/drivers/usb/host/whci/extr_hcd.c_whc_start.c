
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mutex; int cluster_id; } ;
struct whc {scalar_t__ base; } ;
struct usb_hcd {int uses_new_polling; int state; int flags; } ;


 int HCD_FLAG_POLL_RH ;
 int HC_STATE_RUNNING ;
 int WUSBCMD_RUN ;
 scalar_t__ WUSBINTR ;
 int WUSBINTR_ASYNC_SCHED_SYNCED ;
 int WUSBINTR_DNTS_INT ;
 int WUSBINTR_ERR_INT ;
 int WUSBINTR_GEN_CMD_DONE ;
 int WUSBINTR_HOST_ERR ;
 int WUSBINTR_INT ;
 int le_writel (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int whc_set_cluster_id (struct whc*,int ) ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;
 int wusb_cluster_id_get () ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

__attribute__((used)) static int whc_start(struct usb_hcd *usb_hcd)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u8 bcid;
 int ret;

 mutex_lock(&wusbhc->mutex);

 le_writel(WUSBINTR_GEN_CMD_DONE
    | WUSBINTR_HOST_ERR
    | WUSBINTR_ASYNC_SCHED_SYNCED
    | WUSBINTR_DNTS_INT
    | WUSBINTR_ERR_INT
    | WUSBINTR_INT,
    whc->base + WUSBINTR);


 bcid = wusb_cluster_id_get();
 ret = whc_set_cluster_id(whc, bcid);
 if (ret < 0)
  goto out;
 wusbhc->cluster_id = bcid;


 whc_write_wusbcmd(whc, WUSBCMD_RUN, WUSBCMD_RUN);

 usb_hcd->uses_new_polling = 1;
 set_bit(HCD_FLAG_POLL_RH, &usb_hcd->flags);
 usb_hcd->state = HC_STATE_RUNNING;

out:
 mutex_unlock(&wusbhc->mutex);
 return ret;
}
