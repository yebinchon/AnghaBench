
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cs4231_dma_control {int (* enable ) (struct cs4231_dma_control*,int) ;int (* prepare ) (struct cs4231_dma_control*,int) ;} ;
struct snd_cs4231 {int c_periods_sent; int capture_substream; struct cs4231_dma_control c_dma; int p_periods_sent; int playback_substream; struct cs4231_dma_control p_dma; } ;


 unsigned int CS4231_PLAYBACK_ENABLE ;
 unsigned int CS4231_RECORD_ENABLE ;
 int snd_cs4231_advance_dma (struct cs4231_dma_control*,int ,int *) ;
 struct snd_cs4231* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct cs4231_dma_control*,int) ;
 int stub2 (struct cs4231_dma_control*,int) ;
 int stub3 (struct cs4231_dma_control*,int) ;
 int stub4 (struct cs4231_dma_control*,int) ;
 int stub5 (struct cs4231_dma_control*,int) ;
 int stub6 (struct cs4231_dma_control*,int) ;

__attribute__((used)) static void cs4231_dma_trigger(struct snd_pcm_substream *substream,
          unsigned int what, int on)
{
 struct snd_cs4231 *chip = snd_pcm_substream_chip(substream);
 struct cs4231_dma_control *dma_cont;

 if (what & CS4231_PLAYBACK_ENABLE) {
  dma_cont = &chip->p_dma;
  if (on) {
   dma_cont->prepare(dma_cont, 0);
   dma_cont->enable(dma_cont, 1);
   snd_cs4231_advance_dma(dma_cont,
    chip->playback_substream,
    &chip->p_periods_sent);
  } else {
   dma_cont->enable(dma_cont, 0);
  }
 }
 if (what & CS4231_RECORD_ENABLE) {
  dma_cont = &chip->c_dma;
  if (on) {
   dma_cont->prepare(dma_cont, 1);
   dma_cont->enable(dma_cont, 1);
   snd_cs4231_advance_dma(dma_cont,
    chip->capture_substream,
    &chip->c_periods_sent);
  } else {
   dma_cont->enable(dma_cont, 0);
  }
 }
}
