
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int card; } ;
struct platform_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int wm8990_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8990_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;


 if (!codec->card)
  return 0;

 wm8990_set_bias_level(codec, SND_SOC_BIAS_OFF);
 return 0;
}
