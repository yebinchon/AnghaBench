
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int rate; int format; } ;
struct TYPE_3__ {int pclkdiv_lock; } ;
struct TYPE_4__ {TYPE_1__ es1370; } ;
struct ensoniq {int p2_dma_size; int p2_period_size; int ctrl; int sctrl; int reg_lock; TYPE_2__ u; } ;


 int CONTROL ;
 int DAC2_COUNT ;
 int DAC2_FRAME ;
 int DAC2_SIZE ;
 int ES_1370_PCLKDIVM ;
 int ES_1370_PCLKDIVO (int ) ;
 int ES_1370_SRTODIV (int ) ;
 int ES_DAC2_EN ;
 int ES_MEM_PAGEO (int ) ;
 int ES_MODE_CAPTURE ;
 int ES_MODE_PLAY2 ;
 int ES_P2_DAC_SEN ;
 int ES_P2_END_INCM ;
 int ES_P2_END_INCO (int) ;
 int ES_P2_INT_EN ;
 int ES_P2_LOOP_SEL ;
 int ES_P2_MODEM ;
 int ES_P2_MODEO (unsigned int) ;
 int ES_P2_PAUSE ;
 int ES_P2_ST_INCM ;
 int ES_P2_ST_INCO (int ) ;
 int ES_PAGE_DAC ;
 int ES_REG (struct ensoniq*,int ) ;
 int MEM_PAGE ;
 int SERIAL ;
 int outl (int,int ) ;
 int* snd_ensoniq_sample_shift ;
 int snd_es1371_dac2_rate (struct ensoniq*,int ) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_playback2_prepare(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int mode = 0;

 ensoniq->p2_dma_size = snd_pcm_lib_buffer_bytes(substream);
 ensoniq->p2_period_size = snd_pcm_lib_period_bytes(substream);
 if (snd_pcm_format_width(runtime->format) == 16)
  mode |= 0x02;
 if (runtime->channels > 1)
  mode |= 0x01;
 spin_lock_irq(&ensoniq->reg_lock);
 ensoniq->ctrl &= ~ES_DAC2_EN;
 outl(ensoniq->ctrl, ES_REG(ensoniq, CONTROL));
 outl(ES_MEM_PAGEO(ES_PAGE_DAC), ES_REG(ensoniq, MEM_PAGE));
 outl(runtime->dma_addr, ES_REG(ensoniq, DAC2_FRAME));
 outl((ensoniq->p2_dma_size >> 2) - 1, ES_REG(ensoniq, DAC2_SIZE));
 ensoniq->sctrl &= ~(ES_P2_LOOP_SEL | ES_P2_PAUSE | ES_P2_DAC_SEN |
       ES_P2_END_INCM | ES_P2_ST_INCM | ES_P2_MODEM);
 ensoniq->sctrl |= ES_P2_INT_EN | ES_P2_MODEO(mode) |
     ES_P2_END_INCO(mode & 2 ? 2 : 1) | ES_P2_ST_INCO(0);
 outl(ensoniq->sctrl, ES_REG(ensoniq, SERIAL));
 outl((ensoniq->p2_period_size >> snd_ensoniq_sample_shift[mode]) - 1,
      ES_REG(ensoniq, DAC2_COUNT));







 outl(ensoniq->ctrl, ES_REG(ensoniq, CONTROL));
 spin_unlock_irq(&ensoniq->reg_lock);

 snd_es1371_dac2_rate(ensoniq, runtime->rate);

 return 0;
}
