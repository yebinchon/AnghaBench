
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int dma_area; int hw; } ;
struct snd_cs4231 {scalar_t__ p_periods_sent; struct snd_pcm_substream* playback_substream; } ;


 int CS4231_MODE_PLAY ;
 int snd_cs4231_open (struct snd_cs4231*,int ) ;
 int snd_cs4231_playback ;
 int snd_cs4231_xrate (struct snd_pcm_runtime*) ;
 int snd_free_pages (int ,int ) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_cs4231* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs4231_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_cs4231 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 runtime->hw = snd_cs4231_playback;

 err = snd_cs4231_open(chip, CS4231_MODE_PLAY);
 if (err < 0) {
  snd_free_pages(runtime->dma_area, runtime->dma_bytes);
  return err;
 }
 chip->playback_substream = substream;
 chip->p_periods_sent = 0;
 snd_pcm_set_sync(substream);
 snd_cs4231_xrate(runtime);

 return 0;
}
