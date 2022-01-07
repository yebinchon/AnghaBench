
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; int info_flags; struct snd_es1688* private_data; } ;
struct snd_es1688 {struct snd_pcm* pcm; int card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_isa_data () ;
 int snd_es1688_capture_ops ;
 char* snd_es1688_chip_id (struct snd_es1688*) ;
 int snd_es1688_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int sprintf (int ,char*) ;

int snd_es1688_pcm(struct snd_es1688 * chip, int device, struct snd_pcm ** rpcm)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(chip->card, "ESx688", device, 1, 1, &pcm)) < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_es1688_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_es1688_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
 sprintf(pcm->name, snd_es1688_chip_id(chip));
 chip->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_isa_data(),
           64*1024, 64*1024);

 if (rpcm)
  *rpcm = pcm;
 return 0;
}
