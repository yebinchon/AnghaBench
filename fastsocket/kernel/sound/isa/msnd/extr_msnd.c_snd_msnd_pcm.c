
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct snd_msnd* private_data; } ;
struct snd_msnd {int dummy; } ;
struct snd_card {struct snd_msnd* private_data; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_msnd_capture_ops ;
 int snd_msnd_playback_ops ;
 int snd_pcm_new (struct snd_card*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

int snd_msnd_pcm(struct snd_card *card, int device,
   struct snd_pcm **rpcm)
{
 struct snd_msnd *chip = card->private_data;
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(card, "MSNDPINNACLE", device, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_msnd_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_msnd_capture_ops);

 pcm->private_data = chip;
 strcpy(pcm->name, "Hurricane");


 if (rpcm)
  *rpcm = pcm;
 return 0;
}
