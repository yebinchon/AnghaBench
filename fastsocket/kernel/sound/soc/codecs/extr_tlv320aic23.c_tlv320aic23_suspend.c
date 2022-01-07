
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
 int TLV320AIC23_ACTIVE ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int tlv320aic23_set_bias_level (struct snd_soc_codec*,int ) ;
 int tlv320aic23_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int tlv320aic23_suspend(struct platform_device *pdev,
          pm_message_t state)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 tlv320aic23_write(codec, TLV320AIC23_ACTIVE, 0x0);
 tlv320aic23_set_bias_level(codec, SND_SOC_BIAS_OFF);

 return 0;
}
