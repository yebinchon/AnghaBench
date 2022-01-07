
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_priv {struct snd_pcm_substream* master_substream; scalar_t__ configured; struct snd_pcm_substream* slave_substream; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int TWL4030_OPTION_1 ;
 int TWL4030_REG_CODEC_MODE ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int,int) ;
 int twl4030_constraints (struct twl4030_priv*,struct snd_pcm_substream*) ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int twl4030_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct twl4030_priv *twl4030 = codec->private_data;

 if (twl4030->master_substream) {
  twl4030->slave_substream = substream;



  if (twl4030->configured)
   twl4030_constraints(twl4030, twl4030->master_substream);
 } else {
  if (!(twl4030_read_reg_cache(codec, TWL4030_REG_CODEC_MODE) &
   TWL4030_OPTION_1)) {



   snd_pcm_hw_constraint_minmax(substream->runtime,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      2, 2);
  }
  twl4030->master_substream = substream;
 }

 return 0;
}
