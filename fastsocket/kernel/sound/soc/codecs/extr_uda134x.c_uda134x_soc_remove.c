
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {struct snd_soc_codec* reg_cache; struct snd_soc_codec* private_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int SND_SOC_BIAS_STANDBY ;
 int kfree (struct snd_soc_codec*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int uda134x_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int uda134x_soc_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 uda134x_set_bias_level(codec, SND_SOC_BIAS_STANDBY);
 uda134x_set_bias_level(codec, SND_SOC_BIAS_OFF);

 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);

 kfree(codec->private_data);
 kfree(codec->reg_cache);
 kfree(codec);

 return 0;
}
