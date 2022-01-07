
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int info_flags; int name; struct hdsp* private_data; } ;
struct snd_card {int dummy; } ;
struct hdsp {int card_name; struct snd_pcm* pcm; } ;


 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_hdsp_capture_ops ;
 int snd_hdsp_playback_ops ;
 int snd_pcm_new (struct snd_card*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_hdsp_create_pcm(struct snd_card *card, struct hdsp *hdsp)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(card, hdsp->card_name, 0, 1, 1, &pcm)) < 0)
  return err;

 hdsp->pcm = pcm;
 pcm->private_data = hdsp;
 strcpy(pcm->name, hdsp->card_name);

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_hdsp_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_hdsp_capture_ops);

 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;

 return 0;
}
