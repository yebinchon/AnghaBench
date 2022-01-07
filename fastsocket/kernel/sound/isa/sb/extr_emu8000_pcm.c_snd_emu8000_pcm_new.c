
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int private_free; struct snd_emu8000* private_data; } ;
struct snd_emu8000 {struct snd_pcm* pcm; } ;
struct snd_card {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int emu8k_pcm_ops ;
 int snd_device_register (struct snd_card*,struct snd_pcm*) ;
 int snd_emu8000_pcm_free ;
 int snd_pcm_new (struct snd_card*,char*,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;

int snd_emu8000_pcm_new(struct snd_card *card, struct snd_emu8000 *emu, int index)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(card, "Emu8000 PCM", index, 1, 0, &pcm)) < 0)
  return err;
 pcm->private_data = emu;
 pcm->private_free = snd_emu8000_pcm_free;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &emu8k_pcm_ops);
 emu->pcm = pcm;

 snd_device_register(card, pcm);

 return 0;
}
