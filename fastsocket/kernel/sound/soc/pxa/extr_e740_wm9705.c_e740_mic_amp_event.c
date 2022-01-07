
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int E740_AUDIO_IN ;
 int SND_SOC_DAPM_POST_PMD ;
 int SND_SOC_DAPM_PRE_PMU ;
 int e740_audio_power ;
 int e740_sync_audio_power (int ) ;

__attribute__((used)) static int e740_mic_amp_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 if (event & SND_SOC_DAPM_PRE_PMU)
  e740_audio_power |= E740_AUDIO_IN;
 else if (event & SND_SOC_DAPM_POST_PMD)
  e740_audio_power &= ~E740_AUDIO_IN;

 e740_sync_audio_power(e740_audio_power);

 return 0;
}
