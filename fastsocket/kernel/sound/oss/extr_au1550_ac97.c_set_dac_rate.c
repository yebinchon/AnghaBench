
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dmabuf {int src_factor; int sample_rate; int num_channels; } ;
struct au1550_state {int codec; scalar_t__ no_vra; struct dmabuf dma_adc; struct dmabuf dma_dac; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_EXTSTAT_VRA ;
 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LFE_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 int AC97_PCM_SURR_DAC_RATE ;
 int pr_debug (char*,unsigned int) ;
 void* rdcodec (int ,int ) ;
 int wrcodec (int ,int ,int) ;

__attribute__((used)) static void
set_dac_rate(struct au1550_state *s, unsigned rate)
{
 struct dmabuf *dac = &s->dma_dac;
 struct dmabuf *adc = &s->dma_adc;
 unsigned adc_rate, dac_rate;
 u16 ac97_extstat;

 if (s->no_vra) {


  dac->src_factor = ((96000 / rate) + 1) >> 1;
  dac->sample_rate = 48000 / dac->src_factor;
  return;
 }

 dac->src_factor = 1;

 ac97_extstat = rdcodec(s->codec, AC97_EXTENDED_STATUS);

 rate = rate > 48000 ? 48000 : rate;



 wrcodec(s->codec, AC97_EXTENDED_STATUS,
  ac97_extstat | AC97_EXTSTAT_VRA);



 wrcodec(s->codec, AC97_PCM_FRONT_DAC_RATE, (u16) rate);




 if (dac->num_channels > 2)
  wrcodec(s->codec, AC97_PCM_SURR_DAC_RATE, (u16) rate);
 if (dac->num_channels > 4)
  wrcodec(s->codec, AC97_PCM_LFE_DAC_RATE, (u16) rate);


 dac_rate = rdcodec(s->codec, AC97_PCM_FRONT_DAC_RATE);

 pr_debug("set_dac_rate: set to %d Hz\n", dac_rate);




 adc_rate = rdcodec(s->codec, AC97_PCM_LR_ADC_RATE);

 dac->sample_rate = dac_rate;
 adc->sample_rate = adc_rate;
}
