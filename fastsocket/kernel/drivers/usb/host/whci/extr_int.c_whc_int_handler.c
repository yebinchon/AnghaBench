
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wusbhc {int dummy; } ;
struct whc {int dn_work; int workqueue; int periodic_list_wq; int async_list_wq; TYPE_1__* umc; int cmd_wq; scalar_t__ base; } ;
struct usb_hcd {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ WUSBSTS ;
 int WUSBSTS_ASYNC_SCHED_SYNCED ;
 int WUSBSTS_DNTS_INT ;
 int WUSBSTS_ERR_INT ;
 int WUSBSTS_GEN_CMD_DONE ;
 int WUSBSTS_HOST_ERR ;
 int WUSBSTS_INT ;
 int WUSBSTS_INT_MASK ;
 int WUSBSTS_PERIODIC_SCHED_SYNCED ;
 int dev_err (int *,char*) ;
 int le_readl (scalar_t__) ;
 int le_writel (int,scalar_t__) ;
 int queue_work (int ,int *) ;
 int transfer_done (struct whc*) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 int wake_up (int *) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

irqreturn_t whc_int_handler(struct usb_hcd *hcd)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(hcd);
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u32 sts;

 sts = le_readl(whc->base + WUSBSTS);
 if (!(sts & WUSBSTS_INT_MASK))
  return IRQ_NONE;
 le_writel(sts & WUSBSTS_INT_MASK, whc->base + WUSBSTS);

 if (sts & WUSBSTS_GEN_CMD_DONE)
  wake_up(&whc->cmd_wq);

 if (sts & WUSBSTS_HOST_ERR)
  dev_err(&whc->umc->dev, "FIXME: host system error\n");

 if (sts & WUSBSTS_ASYNC_SCHED_SYNCED)
  wake_up(&whc->async_list_wq);

 if (sts & WUSBSTS_PERIODIC_SCHED_SYNCED)
  wake_up(&whc->periodic_list_wq);

 if (sts & WUSBSTS_DNTS_INT)
  queue_work(whc->workqueue, &whc->dn_work);





 if (sts & (WUSBSTS_INT | WUSBSTS_ERR_INT))
  transfer_done(whc);

 return IRQ_HANDLED;
}
