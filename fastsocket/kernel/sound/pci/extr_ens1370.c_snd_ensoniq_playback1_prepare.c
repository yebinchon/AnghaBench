
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int format; } ;
struct ensoniq {int p1_dma_size; int p1_period_size; int ctrl; int sctrl; int reg_lock; } ;


 int CONTROL ;
 int DAC1_COUNT ;
 int DAC1_FRAME ;
 int DAC1_SIZE ;
 int ES_1370_WTSRSEL (int) ;
 int ES_1370_WTSRSELM ;
 int ES_1373_BYPASS_P1 ;
 int ES_DAC1_EN ;
 int ES_MEM_PAGEO (int ) ;
 int ES_P1_INT_EN ;
 int ES_P1_LOOP_SEL ;
 int ES_P1_MODEM ;
 int ES_P1_MODEO (unsigned int) ;
 int ES_P1_PAUSE ;
 int ES_P1_SCT_RLD ;
 int ES_PAGE_DAC ;
 int ES_REG (struct ensoniq*,int ) ;
 int MEM_PAGE ;
 int SERIAL ;
 int outl (int,int ) ;
 int snd_BUG () ;
 int* snd_ensoniq_sample_shift ;
 int snd_es1371_dac1_rate (struct ensoniq*,int) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_playback1_prepare(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int mode = 0;

 ensoniq->p1_dma_size = snd_pcm_lib_buffer_bytes(substream);
 ensoniq->p1_period_size = snd_pcm_lib_period_bytes(substream);
 if (snd_pcm_format_width(runtime->format) == 16)
  mode |= 0x02;
 if (runtime->channels > 1)
  mode |= 0x01;
 spin_lock_irq(&ensoniq->reg_lock);
 ensoniq->ctrl &= ~ES_DAC1_EN;







 outl(ensoniq->ctrl, ES_REG(ensoniq, CONTROL));
 outl(ES_MEM_PAGEO(ES_PAGE_DAC), ES_REG(ensoniq, MEM_PAGE));
 outl(runtime->dma_addr, ES_REG(ensoniq, DAC1_FRAME));
 outl((ensoniq->p1_dma_size >> 2) - 1, ES_REG(ensoniq, DAC1_SIZE));
 ensoniq->sctrl &= ~(ES_P1_LOOP_SEL | ES_P1_PAUSE | ES_P1_SCT_RLD | ES_P1_MODEM);
 ensoniq->sctrl |= ES_P1_INT_EN | ES_P1_MODEO(mode);
 outl(ensoniq->sctrl, ES_REG(ensoniq, SERIAL));
 outl((ensoniq->p1_period_size >> snd_ensoniq_sample_shift[mode]) - 1,
      ES_REG(ensoniq, DAC1_COUNT));
 outl(ensoniq->ctrl, ES_REG(ensoniq, CONTROL));
 spin_unlock_irq(&ensoniq->reg_lock);

 snd_es1371_dac1_rate(ensoniq, runtime->rate);

 return 0;
}
