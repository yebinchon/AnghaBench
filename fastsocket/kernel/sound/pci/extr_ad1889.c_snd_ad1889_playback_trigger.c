
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int reg; } ;
struct snd_ad1889 {TYPE_1__ wave; } ;


 int AD_CHAN_WAV ;
 int AD_DMA_CHSS ;
 int AD_DMA_CHSS_WAVS ;
 int AD_DMA_IM_CNT ;
 int AD_DMA_LOOP ;
 int AD_DMA_WAV ;
 int AD_DS_WSMC ;
 int AD_DS_WSMC_WAEN ;
 int EINVAL ;


 int ad1889_channel_reset (struct snd_ad1889*,int ) ;
 int ad1889_mute (struct snd_ad1889*) ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_unmute (struct snd_ad1889*) ;
 int ad1889_writel (struct snd_ad1889*,int ,int ) ;
 int ad1889_writew (struct snd_ad1889*,int ,int) ;
 int snd_BUG () ;
 struct snd_ad1889* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_ad1889_playback_trigger(struct snd_pcm_substream *ss, int cmd)
{
 u16 wsmc;
 struct snd_ad1889 *chip = snd_pcm_substream_chip(ss);

 wsmc = ad1889_readw(chip, AD_DS_WSMC);

 switch (cmd) {
 case 129:

  ad1889_writew(chip, AD_DMA_WAV, AD_DMA_LOOP | AD_DMA_IM_CNT);
  wsmc |= AD_DS_WSMC_WAEN;

  ad1889_writel(chip, AD_DMA_CHSS, AD_DMA_CHSS_WAVS);
  ad1889_unmute(chip);
  break;
 case 128:
  ad1889_mute(chip);
  wsmc &= ~AD_DS_WSMC_WAEN;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }

 chip->wave.reg = wsmc;
 ad1889_writew(chip, AD_DS_WSMC, wsmc);
 ad1889_readw(chip, AD_DS_WSMC);


 if (cmd == 128)
  ad1889_channel_reset(chip, AD_CHAN_WAV);

 return 0;
}
