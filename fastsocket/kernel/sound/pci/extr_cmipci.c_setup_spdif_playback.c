
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int spdif_playback_avail; int reg_lock; scalar_t__ spdif_playback_enabled; } ;
struct TYPE_2__ {int rate; } ;


 int CM_DBLSPDS ;
 int CM_PLAYBACK_SPDF ;
 int CM_REG_CHFORMAT ;
 int CM_REG_FUNCTRL1 ;
 int CM_REG_MISC_CTRL ;
 int CM_SPDF_AC97 ;
 int CM_SPDIF48K ;
 int save_mixer_state (struct cmipci*) ;
 int setup_ac3 (struct cmipci*,struct snd_pcm_substream*,int,int) ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int setup_spdif_playback(struct cmipci *cm, struct snd_pcm_substream *subs, int up, int do_ac3)
{
 int rate, err;

 rate = subs->runtime->rate;

 if (up && do_ac3)
  if ((err = save_mixer_state(cm)) < 0)
   return err;

 spin_lock_irq(&cm->reg_lock);
 cm->spdif_playback_avail = up;
 if (up) {



  if (cm->spdif_playback_enabled)
   snd_cmipci_set_bit(cm, CM_REG_FUNCTRL1, CM_PLAYBACK_SPDF);
  setup_ac3(cm, subs, do_ac3, rate);

  if (rate == 48000 || rate == 96000)
   snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_SPDIF48K | CM_SPDF_AC97);
  else
   snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPDIF48K | CM_SPDF_AC97);
  if (rate > 48000)
   snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
  else
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
 } else {



  snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
  snd_cmipci_clear_bit(cm, CM_REG_FUNCTRL1, CM_PLAYBACK_SPDF);
  setup_ac3(cm, subs, 0, 0);
 }
 spin_unlock_irq(&cm->reg_lock);
 return 0;
}
