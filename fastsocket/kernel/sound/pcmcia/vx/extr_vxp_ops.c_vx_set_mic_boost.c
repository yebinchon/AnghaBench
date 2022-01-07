
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; int lock; } ;
struct snd_vxpocket {int regCDSP; } ;


 int CDSP ;
 int P24_CDSP_MIC20_SEL_MASK ;
 int P24_CDSP_MIC38_SEL_MASK ;
 int P24_CDSP_MICS_SEL_MASK ;
 int VX_STAT_IS_STALE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vx_outb (struct vx_core*,int ,int) ;

void vx_set_mic_boost(struct vx_core *chip, int boost)
{
 struct snd_vxpocket *pchip = (struct snd_vxpocket *)chip;
 unsigned long flags;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 spin_lock_irqsave(&chip->lock, flags);
 if (pchip->regCDSP & P24_CDSP_MICS_SEL_MASK) {
  if (boost) {

   pchip->regCDSP &= ~P24_CDSP_MIC20_SEL_MASK;
   pchip->regCDSP |= P24_CDSP_MIC38_SEL_MASK;
  } else {

   pchip->regCDSP |= P24_CDSP_MIC20_SEL_MASK;
   pchip->regCDSP &= ~P24_CDSP_MIC38_SEL_MASK;
                }
  vx_outb(chip, CDSP, pchip->regCDSP);
 }
 spin_unlock_irqrestore(&chip->lock, flags);
}
