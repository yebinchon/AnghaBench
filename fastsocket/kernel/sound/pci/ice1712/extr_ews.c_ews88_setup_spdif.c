
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned char cs8403_stream_bits; TYPE_1__* stream_ctl; } ;
struct snd_ice1712 {TYPE_2__ spdif; int card; int reg_lock; } ;
struct TYPE_3__ {int id; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int ,int *) ;
 int snd_ice1712_ews_cs8404_spdif_write (struct snd_ice1712*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ews88_setup_spdif(struct snd_ice1712 *ice, int rate)
{
 unsigned long flags;
 unsigned char tmp;
 int change;

 spin_lock_irqsave(&ice->reg_lock, flags);
 tmp = ice->spdif.cs8403_stream_bits;
 if (tmp & 0x10)
  tmp &= (tmp & 0x01) ? ~0x06 : ~0x60;
 switch (rate) {
 case 32000: tmp |= (tmp & 0x01) ? 0x02 : 0x00; break;
 case 44100: tmp |= (tmp & 0x01) ? 0x06 : 0x40; break;
 case 48000: tmp |= (tmp & 0x01) ? 0x04 : 0x20; break;
 default: tmp |= (tmp & 0x01) ? 0x06 : 0x40; break;
 }
 change = ice->spdif.cs8403_stream_bits != tmp;
 ice->spdif.cs8403_stream_bits = tmp;
 spin_unlock_irqrestore(&ice->reg_lock, flags);
 if (change)
  snd_ctl_notify(ice->card, SNDRV_CTL_EVENT_MASK_VALUE, &ice->spdif.stream_ctl->id);
 snd_ice1712_ews_cs8404_spdif_write(ice, tmp);
}
