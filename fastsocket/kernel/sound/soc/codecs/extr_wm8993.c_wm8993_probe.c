
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_retune_configs; int lineout2_diff; int lineout1_diff; } ;
struct wm8993_priv {TYPE_2__ pdata; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int * dev; struct wm8993_priv* private_data; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {void* codec; } ;


 int ARRAY_SIZE (int ) ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int routes ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_free (struct snd_soc_device*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_widgets (struct snd_soc_codec*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;
 int snd_soc_init_card (struct snd_soc_device*) ;
 int snd_soc_new_pcms (struct snd_soc_device*,int ,int ) ;
 void* wm8993_codec ;
 int wm8993_dapm_widgets ;
 int wm8993_eq_controls ;
 int wm8993_snd_controls ;
 int wm_hubs_add_analogue_controls (struct snd_soc_codec*) ;
 int wm_hubs_add_analogue_routes (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int wm8993_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;
 struct wm8993_priv *wm8993;
 int ret = 0;

 if (!wm8993_codec) {
  dev_err(&pdev->dev, "I2C device not yet probed\n");
  goto err;
 }

 socdev->card->codec = wm8993_codec;
 codec = wm8993_codec;
 wm8993 = codec->private_data;

 ret = snd_soc_new_pcms(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
 if (ret < 0) {
  dev_err(codec->dev, "failed to create pcms\n");
  goto err;
 }

 snd_soc_add_controls(codec, wm8993_snd_controls,
        ARRAY_SIZE(wm8993_snd_controls));
 if (wm8993->pdata.num_retune_configs != 0) {
  dev_dbg(codec->dev, "Using ReTune Mobile\n");
 } else {
  dev_dbg(codec->dev, "No ReTune Mobile, using normal EQ\n");
  snd_soc_add_controls(codec, wm8993_eq_controls,
         ARRAY_SIZE(wm8993_eq_controls));
 }

 snd_soc_dapm_new_controls(codec, wm8993_dapm_widgets,
      ARRAY_SIZE(wm8993_dapm_widgets));
 wm_hubs_add_analogue_controls(codec);

 snd_soc_dapm_add_routes(codec, routes, ARRAY_SIZE(routes));
 wm_hubs_add_analogue_routes(codec, wm8993->pdata.lineout1_diff,
        wm8993->pdata.lineout2_diff);

 snd_soc_dapm_new_widgets(codec);

 ret = snd_soc_init_card(socdev);
 if (ret < 0) {
  dev_err(codec->dev, "failed to register card\n");
  goto card_err;
 }

 return ret;

card_err:
 snd_soc_free_pcms(socdev);
 snd_soc_dapm_free(socdev);
err:
 return ret;
}
