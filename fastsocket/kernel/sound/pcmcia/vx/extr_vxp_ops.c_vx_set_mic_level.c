
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; int lock; } ;
struct snd_vxpocket {int regCDSP; } ;


 int MICRO ;
 int VXP_CDSP_MIC_SEL_MASK ;
 int VX_STAT_IS_STALE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vx_compute_mic_level (int) ;
 int vx_outb (struct vx_core*,int ,int) ;

void vx_set_mic_level(struct vx_core *chip, int level)
{
 struct snd_vxpocket *pchip = (struct snd_vxpocket *)chip;
 unsigned long flags;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 spin_lock_irqsave(&chip->lock, flags);
 if (pchip->regCDSP & VXP_CDSP_MIC_SEL_MASK) {
  level = vx_compute_mic_level(level);
  vx_outb(chip, MICRO, level);
 }
 spin_unlock_irqrestore(&chip->lock, flags);
}
