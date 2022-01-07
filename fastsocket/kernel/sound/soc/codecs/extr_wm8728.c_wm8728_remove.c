
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {scalar_t__ control_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int i2c_del_driver (int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct snd_soc_codec*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int spi_unregister_driver (int *) ;
 int wm8728_i2c_driver ;
 int wm8728_set_bias_level (struct snd_soc_codec*,int ) ;
 int wm8728_spi_driver ;

__attribute__((used)) static int wm8728_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 if (codec->control_data)
  wm8728_set_bias_level(codec, SND_SOC_BIAS_OFF);

 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);







 kfree(codec);

 return 0;
}
