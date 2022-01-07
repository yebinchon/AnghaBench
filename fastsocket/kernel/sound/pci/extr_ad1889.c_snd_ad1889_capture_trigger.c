
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int reg; } ;
struct snd_ad1889 {TYPE_1__ ramc; } ;


 int AD_CHAN_ADC ;
 int AD_DMA_ADC ;
 int AD_DMA_CHSS ;
 int AD_DMA_CHSS_ADCS ;
 int AD_DMA_IM_CNT ;
 int AD_DMA_LOOP ;
 int AD_DS_RAMC ;
 int AD_DS_RAMC_ADEN ;
 int EINVAL ;


 int ad1889_channel_reset (struct snd_ad1889*,int ) ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_writel (struct snd_ad1889*,int ,int ) ;
 int ad1889_writew (struct snd_ad1889*,int ,int) ;
 struct snd_ad1889* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_ad1889_capture_trigger(struct snd_pcm_substream *ss, int cmd)
{
 u16 ramc;
 struct snd_ad1889 *chip = snd_pcm_substream_chip(ss);

 ramc = ad1889_readw(chip, AD_DS_RAMC);

 switch (cmd) {
 case 129:

  ad1889_writew(chip, AD_DMA_ADC, AD_DMA_LOOP | AD_DMA_IM_CNT);
  ramc |= AD_DS_RAMC_ADEN;

  ad1889_writel(chip, AD_DMA_CHSS, AD_DMA_CHSS_ADCS);
  break;
 case 128:
  ramc &= ~AD_DS_RAMC_ADEN;
  break;
 default:
  return -EINVAL;
 }

 chip->ramc.reg = ramc;
 ad1889_writew(chip, AD_DS_RAMC, ramc);
 ad1889_readw(chip, AD_DS_RAMC);


 if (cmd == 128)
  ad1889_channel_reset(chip, AD_CHAN_ADC);

 return 0;
}
