
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int reg_lock; } ;


 int CM_CAPTURE_SPDF ;
 int CM_REG_FUNCTRL1 ;
 int CM_REG_MISC_CTRL ;
 int CM_SPD32SEL ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_hw_free (struct snd_pcm_substream*) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_capture_spdif_hw_free(struct snd_pcm_substream *subs)
{
 struct cmipci *cm = snd_pcm_substream_chip(subs);

 spin_lock_irq(&cm->reg_lock);
 snd_cmipci_clear_bit(cm, CM_REG_FUNCTRL1, CM_CAPTURE_SPDF);
 snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
 spin_unlock_irq(&cm->reg_lock);

 return snd_cmipci_hw_free(subs);
}
