
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {scalar_t__ rear_opened; int reg_lock; } ;
struct snd_pcm_substream {int dummy; } ;


 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_playback_close_1 (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ymfpci_close_extension (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_playback_4ch_close(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 if (chip->rear_opened > 0) {
  chip->rear_opened--;
  ymfpci_close_extension(chip);
 }
 spin_unlock_irq(&chip->reg_lock);
 return snd_ymfpci_playback_close_1(substream);
}
