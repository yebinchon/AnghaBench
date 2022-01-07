
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8988_priv {int sysclk_constraints; int sysclk; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dev; struct wm8988_priv* private_data; } ;
struct snd_pcm_substream {int runtime; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int dev_err (int ,char*) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int ) ;

__attribute__((used)) static int wm8988_pcm_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct snd_soc_codec *codec = dai->codec;
 struct wm8988_priv *wm8988 = codec->private_data;




 if (!wm8988->sysclk) {
  dev_err(codec->dev,
   "No MCLK configured, call set_sysclk() on init\n");
  return -EINVAL;
 }

 snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       wm8988->sysclk_constraints);

 return 0;
}
