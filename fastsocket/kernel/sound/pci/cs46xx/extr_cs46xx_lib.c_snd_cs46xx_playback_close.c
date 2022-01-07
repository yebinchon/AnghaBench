
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_cs46xx_pcm* private_data; } ;
struct snd_cs46xx_pcm {int hw_buf; int * substream; int * pcm_channel; } ;
struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;int * playback_pcm; int spos_mutex; } ;


 int ENXIO ;
 int cs46xx_dsp_destroy_pcm_channel (struct snd_cs46xx*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dma_free_pages (int *) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int snd_cs46xx_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_cs46xx_pcm * cpcm;

 cpcm = runtime->private_data;


 if (!cpcm) return -ENXIO;
 chip->playback_pcm = ((void*)0);


 cpcm->substream = ((void*)0);
 snd_dma_free_pages(&cpcm->hw_buf);
 chip->active_ctrl(chip, -1);

 return 0;
}
