
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enh_mode; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;


 unsigned short SNDRV_GF1_MIN_OFFSET ;
 int SNDRV_GF1_VB_VOLUME_CONTROL ;
 int SNDRV_GF1_VB_VOLUME_END ;
 int SNDRV_GF1_VB_VOLUME_RATE ;
 int SNDRV_GF1_VB_VOLUME_START ;
 int in_interrupt () ;
 int msleep_interruptible (int) ;
 int snd_gf1_clear_voices (struct snd_gus_card*,unsigned short,unsigned short) ;
 int snd_gf1_delay (struct snd_gus_card*) ;
 int snd_gf1_read16 (struct snd_gus_card*,int) ;
 int snd_gf1_select_voice (struct snd_gus_card*,short) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_gf1_stop_voices(struct snd_gus_card * gus, unsigned short v_min, unsigned short v_max)
{
 unsigned long flags;
 short i, ramp_ok;
 unsigned short ramp_end;

 if (!in_interrupt()) {
  for (i = v_min, ramp_ok = 0; i <= v_max; i++) {
   spin_lock_irqsave(&gus->reg_lock, flags);
   snd_gf1_select_voice(gus, i);
   ramp_end = snd_gf1_read16(gus, 9) >> 8;
   if (ramp_end > SNDRV_GF1_MIN_OFFSET) {
    ramp_ok++;
    snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_RATE, 20);
    snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_START, SNDRV_GF1_MIN_OFFSET);
    snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_END, ramp_end);
    snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_CONTROL, 0x40);
    if (gus->gf1.enh_mode) {
     snd_gf1_delay(gus);
     snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_CONTROL, 0x40);
    }
   }
   spin_unlock_irqrestore(&gus->reg_lock, flags);
  }
  msleep_interruptible(50);
 }
 snd_gf1_clear_voices(gus, v_min, v_max);
}
