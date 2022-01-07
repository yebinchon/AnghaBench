
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {scalar_t__ substream; scalar_t__ running; } ;
struct via82xx_modem {unsigned int intr_mask; unsigned int num_devs; int reg_lock; struct viadev* devs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OFFSET_STATUS ;
 int SGD_SHADOW ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIAREG (struct via82xx_modem*,int ) ;
 unsigned char VIA_REG_STAT_EOL ;
 unsigned char VIA_REG_STAT_FLAG ;
 unsigned char VIA_REG_STAT_STOPPED ;
 unsigned char inb (int ) ;
 unsigned int inl (int ) ;
 int outb (unsigned char,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_via82xx_interrupt(int irq, void *dev_id)
{
 struct via82xx_modem *chip = dev_id;
 unsigned int status;
 unsigned int i;

 status = inl(VIAREG(chip, SGD_SHADOW));
 if (! (status & chip->intr_mask)) {
  return IRQ_NONE;
 }



 spin_lock(&chip->reg_lock);
 for (i = 0; i < chip->num_devs; i++) {
  struct viadev *viadev = &chip->devs[i];
  unsigned char c_status = inb(VIADEV_REG(viadev, OFFSET_STATUS));
  c_status &= (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG|VIA_REG_STAT_STOPPED);
  if (! c_status)
   continue;
  if (viadev->substream && viadev->running) {
   spin_unlock(&chip->reg_lock);
   snd_pcm_period_elapsed(viadev->substream);
   spin_lock(&chip->reg_lock);
  }
  outb(c_status, VIADEV_REG(viadev, OFFSET_STATUS));
 }
 spin_unlock(&chip->reg_lock);
 return IRQ_HANDLED;
}
