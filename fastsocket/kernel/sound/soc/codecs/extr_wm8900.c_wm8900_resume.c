
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wm8900_reg_defaults ;
typedef int u16 ;
struct wm8900_priv {int fll_out; int fll_in; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int reg_cache; struct wm8900_priv* private_data; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int GFP_KERNEL ;
 int SND_SOC_BIAS_STANDBY ;
 int WM8900_MAXREG ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int * kmemdup (int ,int,int ) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_write (struct snd_soc_codec*,int,int ) ;
 int wm8900_reset (struct snd_soc_codec*) ;
 int wm8900_set_bias_level (struct snd_soc_codec*,int ) ;
 int wm8900_set_fll (struct snd_soc_codec*,int ,int,int) ;

__attribute__((used)) static int wm8900_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8900_priv *wm8900 = codec->private_data;
 u16 *cache;
 int i, ret;

 cache = kmemdup(codec->reg_cache, sizeof(wm8900_reg_defaults),
   GFP_KERNEL);

 wm8900_reset(codec);
 wm8900_set_bias_level(codec, SND_SOC_BIAS_STANDBY);


 if (wm8900->fll_out) {
  int fll_out = wm8900->fll_out;
  int fll_in = wm8900->fll_in;

  wm8900->fll_in = 0;
  wm8900->fll_out = 0;

  ret = wm8900_set_fll(codec, 0, fll_in, fll_out);
  if (ret != 0) {
   dev_err(&pdev->dev, "Failed to restart FLL\n");
   return ret;
  }
 }

 if (cache) {
  for (i = 0; i < WM8900_MAXREG; i++)
   snd_soc_write(codec, i, cache[i]);
  kfree(cache);
 } else
  dev_err(&pdev->dev, "Unable to allocate register cache\n");

 return 0;
}
