
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_codec {char* name; int (* read ) (struct snd_soc_codec*,int ) ;int num_dai; int dapm_paths; int dapm_widgets; int mutex; int reg_cache_size; TYPE_2__* dai; int set_bias_level; int bias_level; int (* write ) (struct snd_soc_codec*,int ,int) ;int owner; int * dev; void* control_data; struct wm8400_priv* private_data; } ;
struct wm8400_priv {int work; TYPE_1__* wm8400; struct snd_soc_codec codec; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int * dev; } ;
struct TYPE_3__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SND_SOC_BIAS_OFF ;
 int THIS_MODULE ;
 int WM8400_CODEC_ENA ;
 int WM8400_IPVU ;
 int WM8400_LEFT_LINE_INPUT_1_2_VOLUME ;
 int WM8400_LEFT_OUTPUT_VOLUME ;
 int WM8400_POWER_MANAGEMENT_1 ;
 int WM8400_REGISTER_COUNT ;
 int WM8400_RIGHT_LINE_INPUT_1_2_VOLUME ;
 int WM8400_RIGHT_OUTPUT_VOLUME ;
 int dev_err (int *,char*,int) ;
 void* dev_get_drvdata (int *) ;
 int kfree (struct wm8400_priv*) ;
 struct wm8400_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int * power ;
 int regulator_bulk_free (int ,int *) ;
 int regulator_bulk_get (int ,int ,int *) ;
 int schedule_work (int *) ;
 struct snd_soc_codec* wm8400_codec ;
 int wm8400_codec_reset (struct snd_soc_codec*) ;
 TYPE_2__ wm8400_dai ;
 int wm8400_probe_deferred ;
 int wm8400_read (struct snd_soc_codec*,int ) ;
 int wm8400_set_bias_level ;
 int wm8400_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8400_codec_probe(struct platform_device *dev)
{
 struct wm8400_priv *priv;
 int ret;
 u16 reg;
 struct snd_soc_codec *codec;

 priv = kzalloc(sizeof(struct wm8400_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;

 codec = &priv->codec;
 codec->private_data = priv;
 codec->control_data = dev_get_drvdata(&dev->dev);
 priv->wm8400 = dev_get_drvdata(&dev->dev);

 ret = regulator_bulk_get(priv->wm8400->dev,
     ARRAY_SIZE(power), &power[0]);
 if (ret != 0) {
  dev_err(&dev->dev, "Failed to get regulators: %d\n", ret);
         goto err;
 }

 codec->dev = &dev->dev;
 wm8400_dai.dev = &dev->dev;

 codec->name = "WM8400";
 codec->owner = THIS_MODULE;
 codec->read = wm8400_read;
 codec->write = wm8400_write;
 codec->bias_level = SND_SOC_BIAS_OFF;
 codec->set_bias_level = wm8400_set_bias_level;
 codec->dai = &wm8400_dai;
 codec->num_dai = 1;
 codec->reg_cache_size = WM8400_REGISTER_COUNT;
 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);
 INIT_WORK(&priv->work, wm8400_probe_deferred);

 wm8400_codec_reset(codec);

 reg = wm8400_read(codec, WM8400_POWER_MANAGEMENT_1);
 wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, reg | WM8400_CODEC_ENA);


 reg = wm8400_read(codec, WM8400_LEFT_LINE_INPUT_1_2_VOLUME);
 wm8400_write(codec, WM8400_LEFT_LINE_INPUT_1_2_VOLUME,
       reg & WM8400_IPVU);
 reg = wm8400_read(codec, WM8400_RIGHT_LINE_INPUT_1_2_VOLUME);
 wm8400_write(codec, WM8400_RIGHT_LINE_INPUT_1_2_VOLUME,
       reg & WM8400_IPVU);

 wm8400_write(codec, WM8400_LEFT_OUTPUT_VOLUME, 0x50 | (1<<8));
 wm8400_write(codec, WM8400_RIGHT_OUTPUT_VOLUME, 0x50 | (1<<8));

 wm8400_codec = codec;

 if (!schedule_work(&priv->work)) {
  ret = -EINVAL;
  goto err_regulator;
 }

 return 0;

err_regulator:
 wm8400_codec = ((void*)0);
 regulator_bulk_free(ARRAY_SIZE(power), power);
err:
 kfree(priv);
 return ret;
}
