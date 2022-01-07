
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_m3 {int ac97_lock; TYPE_3__* master_volume; int card; scalar_t__ iobase; TYPE_2__* ac97; TYPE_1__* master_switch; scalar_t__ in_suspend; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int* regs; } ;
struct TYPE_4__ {int id; } ;


 size_t AC97_MASTER_VOL ;
 scalar_t__ CODEC_COMMAND ;
 scalar_t__ CODEC_DATA ;
 scalar_t__ HW_VOL_COUNTER_MASTER ;
 scalar_t__ HW_VOL_COUNTER_VOICE ;
 scalar_t__ SHADOW_MIX_REG_MASTER ;
 scalar_t__ SHADOW_MIX_REG_VOICE ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int inb (scalar_t__) ;
 int outb (size_t,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_m3_update_hw_volume(unsigned long private_data)
{
 struct snd_m3 *chip = (struct snd_m3 *) private_data;
 int x, val;
 unsigned long flags;




 x = inb(chip->iobase + SHADOW_MIX_REG_VOICE) & 0xee;


 outb(0x88, chip->iobase + SHADOW_MIX_REG_VOICE);
 outb(0x88, chip->iobase + HW_VOL_COUNTER_VOICE);
 outb(0x88, chip->iobase + SHADOW_MIX_REG_MASTER);
 outb(0x88, chip->iobase + HW_VOL_COUNTER_MASTER);



 if (chip->in_suspend)
  return;

 if (!chip->master_switch || !chip->master_volume)
  return;


 spin_lock_irqsave(&chip->ac97_lock, flags);

 val = chip->ac97->regs[AC97_MASTER_VOL];
 switch (x) {
 case 0x88:

  val ^= 0x8000;
  chip->ac97->regs[AC97_MASTER_VOL] = val;
  outw(val, chip->iobase + CODEC_DATA);
  outb(AC97_MASTER_VOL, chip->iobase + CODEC_COMMAND);
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &chip->master_switch->id);
  break;
 case 0xaa:

  if ((val & 0x7f) > 0)
   val--;
  if ((val & 0x7f00) > 0)
   val -= 0x0100;
  chip->ac97->regs[AC97_MASTER_VOL] = val;
  outw(val, chip->iobase + CODEC_DATA);
  outb(AC97_MASTER_VOL, chip->iobase + CODEC_COMMAND);
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &chip->master_volume->id);
  break;
 case 0x66:

  if ((val & 0x7f) < 0x1f)
   val++;
  if ((val & 0x7f00) < 0x1f00)
   val += 0x0100;
  chip->ac97->regs[AC97_MASTER_VOL] = val;
  outw(val, chip->iobase + CODEC_DATA);
  outb(AC97_MASTER_VOL, chip->iobase + CODEC_COMMAND);
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &chip->master_volume->id);
  break;
 }
 spin_unlock_irqrestore(&chip->ac97_lock, flags);
}
