
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dev; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 struct snd_soc_codec* cs4270_codec ;
 int cs4270_snd_controls ;
 int dev_err (int ,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;

__attribute__((used)) static int cs4270_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = cs4270_codec;
 int ret;


 socdev->card->codec = codec;


 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(codec->dev, "failed to create pcms\n");
  return ret;
 }


 ret = snd_soc_add_controls(codec, cs4270_snd_controls,
    ARRAY_SIZE(cs4270_snd_controls));
 if (ret < 0) {
  dev_err(codec->dev, "failed to add controls\n");
  goto error_free_pcms;
 }


 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(codec->dev, "failed to register card\n");
  goto error_free_pcms;
 }

 return 0;

error_free_pcms:
 snd_soc_free_pcms(socdev);

 return ret;
}
