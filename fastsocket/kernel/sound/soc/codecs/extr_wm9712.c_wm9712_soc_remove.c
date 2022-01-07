
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {struct snd_soc_codec* reg_cache; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int kfree (struct snd_soc_codec*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_ac97_codec (struct snd_soc_codec*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;

__attribute__((used)) static int wm9712_soc_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 if (codec == ((void*)0))
  return 0;

 snd_soc_dapm_free(socdev);
 snd_soc_free_pcms(socdev);
 snd_soc_free_ac97_codec(codec);
 kfree(codec->reg_cache);
 kfree(codec);
 return 0;
}
