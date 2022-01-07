
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int version; scalar_t__ dma16; scalar_t__ dma8; struct snd_card* card; } ;
struct snd_pcm {int info_flags; struct snd_sb* private_data; int name; } ;
struct snd_card {int dummy; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_sb*) ;
 int snd_dma_isa_data () ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (struct snd_card*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_sb16_capture_ops ;
 int snd_sb16_dma_control ;
 int snd_sb16_playback_ops ;
 int sprintf (int ,char*,int,int) ;

int snd_sb16dsp_pcm(struct snd_sb * chip, int device, struct snd_pcm ** rpcm)
{
 struct snd_card *card = chip->card;
 struct snd_pcm *pcm;
 int err;

 if (rpcm)
  *rpcm = ((void*)0);
 if ((err = snd_pcm_new(card, "SB16 DSP", device, 1, 1, &pcm)) < 0)
  return err;
 sprintf(pcm->name, "DSP v%i.%i", chip->version >> 8, chip->version & 0xff);
 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
 pcm->private_data = chip;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sb16_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_sb16_capture_ops);

 if (chip->dma16 >= 0 && chip->dma8 != chip->dma16)
  snd_ctl_add(card, snd_ctl_new1(&snd_sb16_dma_control, chip));
 else
  pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_isa_data(),
           64*1024, 128*1024);

 if (rpcm)
  *rpcm = pcm;
 return 0;
}
