
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int * channel; int reg_lock; scalar_t__ can_96k; } ;
struct TYPE_2__ {int rate; int format; } ;


 int CM_CAPTURE_SPDF ;
 size_t CM_CH_CAPT ;
 int CM_DBLSPDS ;
 int CM_REG_CHFORMAT ;
 int CM_REG_FUNCTRL1 ;
 int CM_REG_MISC_CTRL ;
 int CM_SPD32SEL ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_pcm_prepare (struct cmipci*,int *,struct snd_pcm_substream*) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 int snd_pcm_format_width (int ) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_capture_spdif_prepare(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);

 spin_lock_irq(&cm->reg_lock);
 snd_cmipci_set_bit(cm, CM_REG_FUNCTRL1, CM_CAPTURE_SPDF);
 if (cm->can_96k) {
  if (substream->runtime->rate > 48000)
   snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
  else
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_DBLSPDS);
 }
 if (snd_pcm_format_width(substream->runtime->format) > 16)
  snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
 else
  snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);

 spin_unlock_irq(&cm->reg_lock);

 return snd_cmipci_pcm_prepare(cm, &cm->channel[CM_CH_CAPT], substream);
}
