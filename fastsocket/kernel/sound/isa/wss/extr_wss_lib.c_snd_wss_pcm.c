
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {scalar_t__ hardware; int dma1; int dma2; struct snd_pcm* pcm; scalar_t__ single_dma; int card; } ;
struct snd_pcm {int name; int info_flags; struct snd_wss* private_data; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ WSS_HW_INTERWAVE ;
 int snd_dma_isa_data () ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_wss_capture_ops ;
 int snd_wss_chip_id (struct snd_wss*) ;
 int snd_wss_playback_ops ;
 int strcpy (int ,int ) ;

int snd_wss_pcm(struct snd_wss *chip, int device, struct snd_pcm **rpcm)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, "WSS", device, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_wss_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_wss_capture_ops);


 pcm->private_data = chip;
 pcm->info_flags = 0;
 if (chip->single_dma)
  pcm->info_flags |= SNDRV_PCM_INFO_HALF_DUPLEX;
 if (chip->hardware != WSS_HW_INTERWAVE)
  pcm->info_flags |= SNDRV_PCM_INFO_JOINT_DUPLEX;
 strcpy(pcm->name, snd_wss_chip_id(chip));

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_isa_data(),
           64*1024, chip->dma1 > 3 || chip->dma2 > 3 ? 128*1024 : 64*1024);

 chip->pcm = pcm;
 if (rpcm)
  *rpcm = pcm;
 return 0;
}
