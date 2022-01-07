
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8900_priv {int fll_out; int fll_in; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {struct wm8900_priv* private_data; } ;
struct platform_device {int dev; } ;
typedef int pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int dev_err (int *,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int wm8900_set_bias_level (struct snd_soc_codec*,int ) ;
 int wm8900_set_fll (struct snd_soc_codec*,int ,int ,int ) ;

__attribute__((used)) static int wm8900_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8900_priv *wm8900 = codec->private_data;
 int fll_out = wm8900->fll_out;
 int fll_in = wm8900->fll_in;
 int ret;


 ret = wm8900_set_fll(codec, 0, 0, 0);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to stop FLL\n");
  return ret;
 }

 wm8900->fll_out = fll_out;
 wm8900->fll_in = fll_in;

 wm8900_set_bias_level(codec, SND_SOC_BIAS_OFF);

 return 0;
}
