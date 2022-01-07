
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int AC97PCR_CLRFIFO (int) ;
 int AC97PCR_START (int) ;
 int AC97PCR_STOP (int) ;
 int AC97STAT_BUSY (int) ;
 int AC97_PCR (struct au1xpsc_audio_data*) ;
 int AC97_STAT (struct au1xpsc_audio_data*) ;
 int EINVAL ;




 int SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static int au1xpsc_ac97_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{

 struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
 int ret, stype = SUBSTREAM_TYPE(substream);

 ret = 0;

 switch (cmd) {
 case 130:
 case 131:
  au_writel(AC97PCR_CLRFIFO(stype), AC97_PCR(pscdata));
  au_sync();
  au_writel(AC97PCR_START(stype), AC97_PCR(pscdata));
  au_sync();
  break;
 case 129:
 case 128:
  au_writel(AC97PCR_STOP(stype), AC97_PCR(pscdata));
  au_sync();

  while (au_readl(AC97_STAT(pscdata)) & AC97STAT_BUSY(stype))
   asm volatile ("nop");

  au_writel(AC97PCR_CLRFIFO(stype), AC97_PCR(pscdata));
  au_sync();

  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
