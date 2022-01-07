
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wm8523_priv {int sysclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dev; struct wm8523_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_5__ {int ratio; int value; } ;
struct TYPE_4__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;




 int WM8523_AIF_CTRL1 ;
 int WM8523_AIF_CTRL2 ;
 int WM8523_SR_MASK ;
 int WM8523_WL_MASK ;
 int dev_err (int ,char*,int) ;
 TYPE_2__* lrclk_ratios ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8523_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8523_priv *wm8523 = codec->private_data;
 int i;
 u16 aifctrl1 = snd_soc_read(codec, WM8523_AIF_CTRL1);
 u16 aifctrl2 = snd_soc_read(codec, WM8523_AIF_CTRL2);


 for (i = 0; i < ARRAY_SIZE(lrclk_ratios); i++) {
  if (wm8523->sysclk / params_rate(params) ==
      lrclk_ratios[i].ratio)
   break;
 }


 if (i == ARRAY_SIZE(lrclk_ratios)) {
  dev_err(codec->dev, "MCLK/fs ratio %d unsupported\n",
   wm8523->sysclk / params_rate(params));
  return -EINVAL;
 }

 aifctrl2 &= ~WM8523_SR_MASK;
 aifctrl2 |= lrclk_ratios[i].value;

 aifctrl1 &= ~WM8523_WL_MASK;
 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  aifctrl1 |= 0x8;
  break;
 case 129:
  aifctrl1 |= 0x10;
  break;
 case 128:
  aifctrl1 |= 0x18;
  break;
 }

 snd_soc_write(codec, WM8523_AIF_CTRL1, aifctrl1);
 snd_soc_write(codec, WM8523_AIF_CTRL2, aifctrl2);

 return 0;
}
