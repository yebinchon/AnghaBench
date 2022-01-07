
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {struct snd_soc_codec* private_data; scalar_t__ control_data; int delayed_work; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int i2c_del_driver (int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct snd_soc_codec*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int run_delayed_work (int *) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int spi_unregister_driver (int *) ;
 int wm8750_i2c_driver ;
 int wm8750_set_bias_level (struct snd_soc_codec*,int ) ;
 int wm8750_spi_driver ;

__attribute__((used)) static int wm8750_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;

 if (codec->control_data)
  wm8750_set_bias_level(codec, SND_SOC_BIAS_OFF);
 run_delayed_work(&codec->delayed_work);
 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);







 kfree(codec->private_data);
 kfree(codec);

 return 0;
}
