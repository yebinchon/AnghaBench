
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct whc {int mutex; int lock; scalar_t__ base; scalar_t__ gen_cmd_buf_dma; int gen_cmd_buf; TYPE_1__* umc; int cmd_wq; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int WHC_GENCMD_TIMEOUT_MS ;
 scalar_t__ WUSBGENADDR ;
 scalar_t__ WUSBGENCMDPARAMS ;
 scalar_t__ WUSBGENCMDSTS ;
 int WUSBGENCMDSTS_ACTIVE ;
 int WUSBGENCMDSTS_IOC ;
 int dev_err (int *,char*,int,int) ;
 int le_readl (scalar_t__) ;
 int le_writel (int,scalar_t__) ;
 int le_writeq (scalar_t__,scalar_t__) ;
 int memcpy (int ,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

int whc_do_gencmd(struct whc *whc, u32 cmd, u32 params, void *addr, size_t len)
{
 unsigned long flags;
 dma_addr_t dma_addr;
 int t;
 int ret = 0;

 mutex_lock(&whc->mutex);


 t = wait_event_timeout(whc->cmd_wq,
          (le_readl(whc->base + WUSBGENCMDSTS) & WUSBGENCMDSTS_ACTIVE) == 0,
          WHC_GENCMD_TIMEOUT_MS);
 if (t == 0) {
  dev_err(&whc->umc->dev, "generic command timeout (%04x/%04x)\n",
   le_readl(whc->base + WUSBGENCMDSTS),
   le_readl(whc->base + WUSBGENCMDPARAMS));
  ret = -ETIMEDOUT;
  goto out;
 }

 if (addr) {
  memcpy(whc->gen_cmd_buf, addr, len);
  dma_addr = whc->gen_cmd_buf_dma;
 } else
  dma_addr = 0;


 spin_lock_irqsave(&whc->lock, flags);

 le_writel(params, whc->base + WUSBGENCMDPARAMS);
 le_writeq(dma_addr, whc->base + WUSBGENADDR);

 le_writel(WUSBGENCMDSTS_ACTIVE | WUSBGENCMDSTS_IOC | cmd,
    whc->base + WUSBGENCMDSTS);

 spin_unlock_irqrestore(&whc->lock, flags);
out:
 mutex_unlock(&whc->mutex);

 return ret;
}
