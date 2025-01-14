
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ENODEV ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int cx20442_add_widgets (struct snd_soc_codec*) ;
 struct snd_soc_codec* cx20442_codec ;
 int dev_err (int *,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;

__attribute__((used)) static int cx20442_codec_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;
 int ret;

 if (!cx20442_codec) {
  dev_err(&pdev->dev, "cx20442 not yet discovered\n");
  return -ENODEV;
 }
 codec = cx20442_codec;

 socdev->card->codec = codec;


 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to create pcms\n");
  goto pcm_err;
 }

 cx20442_add_widgets(codec);

 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register card\n");
  goto card_err;
 }

 return ret;

card_err:
 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);
pcm_err:
 return ret;
}
