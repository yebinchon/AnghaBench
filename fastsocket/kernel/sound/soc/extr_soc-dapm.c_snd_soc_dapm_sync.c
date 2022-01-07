
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int SND_SOC_DAPM_STREAM_NOP ;
 int dapm_power_widgets (struct snd_soc_codec*,int ) ;
 int dump_dapm (struct snd_soc_codec*,char*) ;

int snd_soc_dapm_sync(struct snd_soc_codec *codec)
{
 int ret = dapm_power_widgets(codec, SND_SOC_DAPM_STREAM_NOP);
 dump_dapm(codec, "sync");
 return ret;
}
