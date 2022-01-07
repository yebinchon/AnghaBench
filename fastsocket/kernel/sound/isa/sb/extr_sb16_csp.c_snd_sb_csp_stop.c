
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_sb_csp {int running; TYPE_1__* chip; } ;
struct TYPE_5__ {int mixer_lock; int reg_lock; } ;


 scalar_t__ SB_DSP4_PCM_DEV ;
 int SNDRV_SB_CSP_ST_PAUSED ;
 int SNDRV_SB_CSP_ST_QSOUND ;
 int SNDRV_SB_CSP_ST_RUNNING ;
 int set_codec_parameter (TYPE_1__*,int,int) ;
 int set_mode_register (TYPE_1__*,int) ;
 unsigned char snd_sbmixer_read (TYPE_1__*,scalar_t__) ;
 int snd_sbmixer_write (TYPE_1__*,scalar_t__,unsigned char) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb_csp_stop(struct snd_sb_csp * p)
{
 int result;
 unsigned char mixL, mixR;
 unsigned long flags;

 if (!(p->running & SNDRV_SB_CSP_ST_RUNNING))
  return 0;


 spin_lock_irqsave(&p->chip->mixer_lock, flags);
 mixL = snd_sbmixer_read(p->chip, SB_DSP4_PCM_DEV);
 mixR = snd_sbmixer_read(p->chip, SB_DSP4_PCM_DEV + 1);
 snd_sbmixer_write(p->chip, SB_DSP4_PCM_DEV, mixL & 0x7);
 snd_sbmixer_write(p->chip, SB_DSP4_PCM_DEV + 1, mixR & 0x7);

 spin_lock(&p->chip->reg_lock);
 if (p->running & SNDRV_SB_CSP_ST_QSOUND) {
  set_codec_parameter(p->chip, 0xe0, 0x01);

  set_codec_parameter(p->chip, 0x00, 0x00);
  set_codec_parameter(p->chip, 0x01, 0x00);

  p->running &= ~SNDRV_SB_CSP_ST_QSOUND;
 }
 result = set_mode_register(p->chip, 0xc0);
 spin_unlock(&p->chip->reg_lock);


 snd_sbmixer_write(p->chip, SB_DSP4_PCM_DEV, mixL);
 snd_sbmixer_write(p->chip, SB_DSP4_PCM_DEV + 1, mixR);
 spin_unlock_irqrestore(&p->chip->mixer_lock, flags);

 if (!(result))
  p->running &= ~(SNDRV_SB_CSP_ST_PAUSED | SNDRV_SB_CSP_ST_RUNNING);
 return result;
}
