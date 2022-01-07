
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {int dev; TYPE_1__* card; struct aic26* codec_data; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dev; } ;
struct aic26 {struct snd_soc_codec codec; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int WARN_ON (int) ;
 int aic26_snd_controls ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;

__attribute__((used)) static int aic26_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;
 struct aic26 *aic26;
 int ret, err;

 dev_info(&pdev->dev, "Probing AIC26 SoC CODEC driver\n");
 dev_dbg(&pdev->dev, "socdev=%p\n", socdev);
 dev_dbg(&pdev->dev, "codec_data=%p\n", socdev->codec_data);



 aic26 = socdev->codec_data;
 if (aic26 == ((void*)0)) {
  dev_err(&pdev->dev, "aic26: missing codec pointer\n");
  return -ENODEV;
 }
 codec = &aic26->codec;
 socdev->card->codec = codec;

 dev_dbg(&pdev->dev, "Registering PCMs, dev=%p, socdev->dev=%p\n",
  &pdev->dev, socdev->dev);

 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(&pdev->dev, "aic26: failed to create pcms\n");
  return -ENODEV;
 }


 dev_dbg(&pdev->dev, "Registering controls\n");
 err = snd_soc_add_controls(codec, aic26_snd_controls,
   ARRAY_SIZE(aic26_snd_controls));
 WARN_ON(err < 0);


 dev_dbg(&pdev->dev, "Registering card\n");
 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "aic26: failed to register card\n");
  goto card_err;
 }
 return 0;

 card_err:
 snd_soc_free_pcms(socdev);
 return ret;
}
