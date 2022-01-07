
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {char* name; int num_dai; int dev; int (* write ) (struct snd_soc_codec*,int ,int) ;int dapm_paths; int dapm_widgets; int read; TYPE_1__* dai; int owner; int reg_cache_size; int reg_cache; struct ad1836_priv* private_data; int mutex; } ;
struct ad1836_priv {int reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int dev; } ;


 int AD1836_ADC_CTRL1 ;
 int AD1836_ADC_CTRL2 ;
 int AD1836_ADC_CTRL3 ;
 int AD1836_DAC_CTRL1 ;
 int AD1836_DAC_CTRL2 ;
 int AD1836_DAC_L1_VOL ;
 int AD1836_DAC_L2_VOL ;
 int AD1836_DAC_L3_VOL ;
 int AD1836_DAC_R1_VOL ;
 int AD1836_DAC_R2_VOL ;
 int AD1836_DAC_R3_VOL ;
 int AD1836_NUM_REGS ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 struct snd_soc_codec* ad1836_codec ;
 TYPE_1__ ad1836_dai ;
 int ad1836_read_reg_cache ;
 int ad1836_write_reg (struct snd_soc_codec*,int ,int) ;
 int dev_err (int ,char*,...) ;
 int kfree (struct ad1836_priv*) ;
 int mutex_init (int *) ;
 int snd_soc_register_codec (struct snd_soc_codec*) ;
 int snd_soc_register_dai (TYPE_1__*) ;
 int snd_soc_unregister_codec (struct snd_soc_codec*) ;
 int stub1 (struct snd_soc_codec*,int ,int) ;
 int stub10 (struct snd_soc_codec*,int ,int) ;
 int stub11 (struct snd_soc_codec*,int ,int) ;
 int stub2 (struct snd_soc_codec*,int ,int) ;
 int stub3 (struct snd_soc_codec*,int ,int) ;
 int stub4 (struct snd_soc_codec*,int ,int) ;
 int stub5 (struct snd_soc_codec*,int ,int) ;
 int stub6 (struct snd_soc_codec*,int ,int) ;
 int stub7 (struct snd_soc_codec*,int ,int) ;
 int stub8 (struct snd_soc_codec*,int ,int) ;
 int stub9 (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ad1836_register(struct ad1836_priv *ad1836)
{
 int ret;
 struct snd_soc_codec *codec = &ad1836->codec;

 if (ad1836_codec) {
  dev_err(codec->dev, "Another ad1836 is registered\n");
  return -EINVAL;
 }

 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);
 codec->private_data = ad1836;
 codec->reg_cache = ad1836->reg_cache;
 codec->reg_cache_size = AD1836_NUM_REGS;
 codec->name = "AD1836";
 codec->owner = THIS_MODULE;
 codec->dai = &ad1836_dai;
 codec->num_dai = 1;
 codec->write = ad1836_write_reg;
 codec->read = ad1836_read_reg_cache;
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);

 ad1836_dai.dev = codec->dev;
 ad1836_codec = codec;



 codec->write(codec, AD1836_DAC_CTRL1, 0x300);

 codec->write(codec, AD1836_DAC_CTRL2, 0x0);

 codec->write(codec, AD1836_ADC_CTRL1, 0x100);

 codec->write(codec, AD1836_ADC_CTRL2, 0x180);

 codec->write(codec, AD1836_ADC_CTRL3, 0x3A);

 codec->write(codec, AD1836_DAC_L1_VOL, 0x3FF);
 codec->write(codec, AD1836_DAC_R1_VOL, 0x3FF);
 codec->write(codec, AD1836_DAC_L2_VOL, 0x3FF);
 codec->write(codec, AD1836_DAC_R2_VOL, 0x3FF);
 codec->write(codec, AD1836_DAC_L3_VOL, 0x3FF);
 codec->write(codec, AD1836_DAC_R3_VOL, 0x3FF);

 ret = snd_soc_register_codec(codec);
 if (ret != 0) {
  dev_err(codec->dev, "Failed to register codec: %d\n", ret);
  kfree(ad1836);
  return ret;
 }

 ret = snd_soc_register_dai(&ad1836_dai);
 if (ret != 0) {
  dev_err(codec->dev, "Failed to register DAI: %d\n", ret);
  snd_soc_unregister_codec(codec);
  kfree(ad1836);
  return ret;
 }

 return 0;
}
