
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int suspend_bias_level; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_STANDBY ;
 int ak4535_set_bias_level (struct snd_soc_codec*,int ) ;
 int ak4535_sync (struct snd_soc_codec*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ak4535_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 ak4535_sync(codec);
 ak4535_set_bias_level(codec, SND_SOC_BIAS_STANDBY);
 ak4535_set_bias_level(codec, codec->suspend_bias_level);
 return 0;
}
