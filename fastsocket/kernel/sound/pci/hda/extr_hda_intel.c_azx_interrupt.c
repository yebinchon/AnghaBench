
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct azx_dev {int sd_int_sta_mask; int irq_pending; int substream; int running; } ;
struct azx {int num_streams; int driver_caps; int reg_lock; int irq_pending_work; TYPE_4__* bus; struct azx_dev* azx_dev; scalar_t__ disabled; TYPE_3__* pci; } ;
typedef int irqreturn_t ;
struct TYPE_8__ {scalar_t__ workq; } ;
struct TYPE_5__ {scalar_t__ runtime_status; } ;
struct TYPE_6__ {TYPE_1__ power; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;


 int AZX_DCAPS_RIRB_PRE_DELAY ;
 int INTSTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RIRBSTS ;
 int RIRB_INT_MASK ;
 int RIRB_INT_RESPONSE ;
 scalar_t__ RPM_ACTIVE ;
 int SD_INT_COMPLETE ;
 int SD_INT_MASK ;
 int SD_STS ;
 int STATESTS ;
 int azx_position_ok (struct azx*,struct azx_dev*) ;
 int azx_readb (struct azx*,int ) ;
 int azx_readl (struct azx*,int ) ;
 int azx_sd_readb (struct azx_dev*,int ) ;
 int azx_sd_writeb (struct azx_dev*,int ,int ) ;
 int azx_update_rirb (struct azx*) ;
 int azx_writeb (struct azx*,int ,int) ;
 int queue_work (scalar_t__,int *) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t azx_interrupt(int irq, void *dev_id)
{
 struct azx *chip = dev_id;
 struct azx_dev *azx_dev;
 u32 status;
 u8 sd_status;
 int i, ok;






 spin_lock(&chip->reg_lock);

 if (chip->disabled) {
  spin_unlock(&chip->reg_lock);
  return IRQ_NONE;
 }

 status = azx_readl(chip, INTSTS);
 if (status == 0) {
  spin_unlock(&chip->reg_lock);
  return IRQ_NONE;
 }

 for (i = 0; i < chip->num_streams; i++) {
  azx_dev = &chip->azx_dev[i];
  if (status & azx_dev->sd_int_sta_mask) {
   sd_status = azx_sd_readb(azx_dev, SD_STS);
   azx_sd_writeb(azx_dev, SD_STS, SD_INT_MASK);
   if (!azx_dev->substream || !azx_dev->running ||
       !(sd_status & SD_INT_COMPLETE))
    continue;

   ok = azx_position_ok(chip, azx_dev);
   if (ok == 1) {
    azx_dev->irq_pending = 0;
    spin_unlock(&chip->reg_lock);
    snd_pcm_period_elapsed(azx_dev->substream);
    spin_lock(&chip->reg_lock);
   } else if (ok == 0 && chip->bus && chip->bus->workq) {

    azx_dev->irq_pending = 1;
    queue_work(chip->bus->workq,
        &chip->irq_pending_work);
   }
  }
 }


 status = azx_readb(chip, RIRBSTS);
 if (status & RIRB_INT_MASK) {
  if (status & RIRB_INT_RESPONSE) {
   if (chip->driver_caps & AZX_DCAPS_RIRB_PRE_DELAY)
    udelay(80);
   azx_update_rirb(chip);
  }
  azx_writeb(chip, RIRBSTS, RIRB_INT_MASK);
 }






 spin_unlock(&chip->reg_lock);

 return IRQ_HANDLED;
}
