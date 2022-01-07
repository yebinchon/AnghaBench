
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct whcrc {int cmd_wq; int event_work; scalar_t__ rc_base; TYPE_1__* umc_dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ URCSTS ;
 int URCSTS_ER ;
 int URCSTS_HSE ;
 int URCSTS_INT_MASK ;
 int URCSTS_RCI ;
 int dev_err (struct device*,char*) ;
 int le_readl (scalar_t__) ;
 int le_writel (int,scalar_t__) ;
 int schedule_work (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static
irqreturn_t whcrc_irq_cb(int irq, void *_whcrc)
{
 struct whcrc *whcrc = _whcrc;
 struct device *dev = &whcrc->umc_dev->dev;
 u32 urcsts;

 urcsts = le_readl(whcrc->rc_base + URCSTS);
 if (!(urcsts & URCSTS_INT_MASK))
  return IRQ_NONE;
 le_writel(urcsts & URCSTS_INT_MASK, whcrc->rc_base + URCSTS);

 if (urcsts & URCSTS_HSE) {
  dev_err(dev, "host system error -- hardware halted\n");

  goto out;
 }
 if (urcsts & URCSTS_ER)
  schedule_work(&whcrc->event_work);
 if (urcsts & URCSTS_RCI)
  wake_up_all(&whcrc->cmd_wq);
out:
 return IRQ_HANDLED;
}
