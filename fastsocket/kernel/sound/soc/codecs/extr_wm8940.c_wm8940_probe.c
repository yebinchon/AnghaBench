
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dev; int mutex; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int dev_err (int ,char*,...) ;
 int mutex_init (int *) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;
 int wm8940_add_widgets (struct snd_soc_codec*) ;
 struct snd_soc_codec* wm8940_codec ;
 int wm8940_snd_controls ;

__attribute__((used)) static int wm8940_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;

 int ret = 0;

 if (wm8940_codec == ((void*)0)) {
  dev_err(&pdev->dev, "Codec device not registered\n");
  return -ENODEV;
 }

 socdev->card->codec = wm8940_codec;
 codec = wm8940_codec;

 mutex_init(&codec->mutex);

 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(codec->dev, "failed to create pcms: %d\n", ret);
  goto pcm_err;
 }

 ret = snd_soc_add_controls(codec, wm8940_snd_controls,
        ARRAY_SIZE(wm8940_snd_controls));
 if (ret)
  goto error_free_pcms;
 ret = wm8940_add_widgets(codec);
 if (ret)
  goto error_free_pcms;

 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(codec->dev, "failed to register card: %d\n", ret);
  goto error_free_pcms;
 }

 return ret;

error_free_pcms:
 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);
pcm_err:
 return ret;
}
