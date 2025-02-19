
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci_pcm {int output_rear; scalar_t__ swap_rear; scalar_t__ output_front; } ;
struct snd_ymfpci {int reg_lock; int rear_opened; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;


 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_playback_open_1 (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ymfpci_open_extension (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_playback_4ch_open(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm;
 int err;

 if ((err = snd_ymfpci_playback_open_1(substream)) < 0)
  return err;
 ypcm = runtime->private_data;
 ypcm->output_front = 0;
 ypcm->output_rear = 1;
 ypcm->swap_rear = 0;
 spin_lock_irq(&chip->reg_lock);
 ymfpci_open_extension(chip);
 chip->rear_opened++;
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
