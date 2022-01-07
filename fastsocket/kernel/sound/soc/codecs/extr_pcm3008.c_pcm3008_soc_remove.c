
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; struct pcm3008_setup_data* codec_data; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dummy; } ;
struct pcm3008_setup_data {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int kfree (struct snd_soc_codec*) ;
 int pcm3008_gpio_free (struct pcm3008_setup_data*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;

__attribute__((used)) static int pcm3008_soc_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 struct pcm3008_setup_data *setup = socdev->codec_data;

 if (!codec)
  return 0;

 pcm3008_gpio_free(setup);
 snd_soc_free_pcms(socdev);
 kfree(socdev->card->codec);

 return 0;
}
