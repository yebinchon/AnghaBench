
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {scalar_t__ suspend_bias_level; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 scalar_t__ SND_SOC_BIAS_ON ;
 scalar_t__ SND_SOC_BIAS_STANDBY ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int wm8350_set_bias_level (struct snd_soc_codec*,scalar_t__) ;

__attribute__((used)) static int wm8350_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 wm8350_set_bias_level(codec, SND_SOC_BIAS_STANDBY);

 if (codec->suspend_bias_level == SND_SOC_BIAS_ON)
  wm8350_set_bias_level(codec, SND_SOC_BIAS_ON);

 return 0;
}
