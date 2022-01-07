
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int aic3x_set_bias_level (struct snd_soc_codec*,int ) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int aic3x_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 aic3x_set_bias_level(codec, SND_SOC_BIAS_OFF);

 return 0;
}
