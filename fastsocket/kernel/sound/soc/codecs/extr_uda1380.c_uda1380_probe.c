
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uda1380_platform_data {int dac_clk; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {TYPE_2__* dev; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {struct uda1380_platform_data* platform_data; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int R00_DAC_CLK ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int SND_SOC_BIAS_STANDBY ;
 int UDA1380_CLK ;


 int dev_err (TYPE_2__*,char*,...) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;
 int uda1380_add_widgets (struct snd_soc_codec*) ;
 struct snd_soc_codec* uda1380_codec ;
 int uda1380_set_bias_level (struct snd_soc_codec*,int ) ;
 int uda1380_snd_controls ;
 int uda1380_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int uda1380_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;
 struct uda1380_platform_data *pdata;
 int ret = 0;

 if (uda1380_codec == ((void*)0)) {
  dev_err(&pdev->dev, "Codec device not registered\n");
  return -ENODEV;
 }

 socdev->card->codec = uda1380_codec;
 codec = uda1380_codec;
 pdata = codec->dev->platform_data;


 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(codec->dev, "failed to create pcms: %d\n", ret);
  goto pcm_err;
 }


 uda1380_set_bias_level(codec, SND_SOC_BIAS_STANDBY);

 switch (pdata->dac_clk) {
 case 129:
  uda1380_write(codec, UDA1380_CLK, 0);
  break;
 case 128:
  uda1380_write(codec, UDA1380_CLK, R00_DAC_CLK);
  break;
 }

 snd_soc_add_controls(codec, uda1380_snd_controls,
    ARRAY_SIZE(uda1380_snd_controls));
 uda1380_add_widgets(codec);
 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(codec->dev, "failed to register card: %d\n", ret);
  goto card_err;
 }

 return ret;

card_err:
 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);
pcm_err:
 return ret;
}
