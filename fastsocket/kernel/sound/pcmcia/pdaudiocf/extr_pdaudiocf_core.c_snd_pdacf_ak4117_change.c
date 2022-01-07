
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pdacf {int reg_lock; int * regmap; } ;
struct ak4117 {unsigned char rcs0; struct snd_pdacf* change_callback_private; } ;


 unsigned char AK4117_UNLCK ;
 int PDAUDIOCF_BLUE_LED_OFF ;
 int PDAUDIOCF_REG_SCR ;
 int pdacf_reg_write (struct snd_pdacf*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_pdacf_ak4117_change(struct ak4117 *ak4117, unsigned char c0, unsigned char c1)
{
 struct snd_pdacf *chip = ak4117->change_callback_private;
 unsigned long flags;
 u16 val;

 if (!(c0 & AK4117_UNLCK))
  return;
 spin_lock_irqsave(&chip->reg_lock, flags);
 val = chip->regmap[PDAUDIOCF_REG_SCR>>1];
 if (ak4117->rcs0 & AK4117_UNLCK)
  val |= PDAUDIOCF_BLUE_LED_OFF;
 else
  val &= ~PDAUDIOCF_BLUE_LED_OFF;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
