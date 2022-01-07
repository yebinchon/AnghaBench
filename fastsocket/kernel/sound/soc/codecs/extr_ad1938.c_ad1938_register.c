
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {char* name; int num_dai; int dev; int (* write ) (struct snd_soc_codec*,int ,int) ;int dapm_paths; int dapm_widgets; int set_bias_level; int read; TYPE_1__* dai; int owner; int reg_cache_size; int reg_cache; struct ad1938_priv* private_data; int mutex; } ;
struct ad1938_priv {int reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int dev; } ;


 int AD1938_ADC_CTRL0 ;
 int AD1938_ADC_CTRL1 ;
 int AD1938_DAC_CHNL_MUTE ;
 int AD1938_DAC_CTRL0 ;
 int AD1938_DAC_CTRL2 ;
 int AD1938_NUM_REGS ;
 int AD1938_PLL_CLK_CTRL0 ;
 int AD1938_PLL_CLK_CTRL1 ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 struct snd_soc_codec* ad1938_codec ;
 TYPE_1__ ad1938_dai ;
 int ad1938_fill_cache (struct snd_soc_codec*) ;
 int ad1938_read_reg_cache ;
 int ad1938_set_bias_level ;
 int ad1938_write_reg (struct snd_soc_codec*,int ,int) ;
 int dev_err (int ,char*,...) ;
 int kfree (struct ad1938_priv*) ;
 int mutex_init (int *) ;
 int snd_soc_register_codec (struct snd_soc_codec*) ;
 int snd_soc_register_dai (TYPE_1__*) ;
 int snd_soc_unregister_codec (struct snd_soc_codec*) ;
 int stub1 (struct snd_soc_codec*,int ,int) ;
 int stub2 (struct snd_soc_codec*,int ,int) ;
 int stub3 (struct snd_soc_codec*,int ,int) ;
 int stub4 (struct snd_soc_codec*,int ,int) ;
 int stub5 (struct snd_soc_codec*,int ,int) ;
 int stub6 (struct snd_soc_codec*,int ,int) ;
 int stub7 (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ad1938_register(struct ad1938_priv *ad1938)
{
 int ret;
 struct snd_soc_codec *codec = &ad1938->codec;

 if (ad1938_codec) {
  dev_err(codec->dev, "Another ad1938 is registered\n");
  return -EINVAL;
 }

 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);
 codec->private_data = ad1938;
 codec->reg_cache = ad1938->reg_cache;
 codec->reg_cache_size = AD1938_NUM_REGS;
 codec->name = "AD1938";
 codec->owner = THIS_MODULE;
 codec->dai = &ad1938_dai;
 codec->num_dai = 1;
 codec->write = ad1938_write_reg;
 codec->read = ad1938_read_reg_cache;
 codec->set_bias_level = ad1938_set_bias_level;
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);

 ad1938_dai.dev = codec->dev;
 ad1938_codec = codec;




 codec->write(codec, AD1938_DAC_CHNL_MUTE, 0x0);

 codec->write(codec, AD1938_DAC_CTRL2, 0x1A);

 codec->write(codec, AD1938_DAC_CTRL0, 0x41);

 codec->write(codec, AD1938_ADC_CTRL0, 0x3);

 codec->write(codec, AD1938_ADC_CTRL1, 0x43);

 codec->write(codec, AD1938_PLL_CLK_CTRL0, 0x9D);
 codec->write(codec, AD1938_PLL_CLK_CTRL1, 0x04);

 ad1938_fill_cache(codec);

 ret = snd_soc_register_codec(codec);
 if (ret != 0) {
  dev_err(codec->dev, "Failed to register codec: %d\n", ret);
  kfree(ad1938);
  return ret;
 }

 ret = snd_soc_register_dai(&ad1938_dai);
 if (ret != 0) {
  dev_err(codec->dev, "Failed to register DAI: %d\n", ret);
  snd_soc_unregister_codec(codec);
  kfree(ad1938);
  return ret;
 }

 return 0;
}
