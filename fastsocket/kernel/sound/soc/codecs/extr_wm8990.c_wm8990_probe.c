
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8990_setup_data {scalar_t__ i2c_address; } ;
struct wm8990_priv {struct wm8990_priv* private_data; scalar_t__ hw_write; int dapm_paths; int dapm_widgets; int mutex; } ;
struct snd_soc_device {TYPE_1__* card; struct wm8990_setup_data* codec_data; } ;
struct snd_soc_codec {struct snd_soc_codec* private_data; scalar_t__ hw_write; int dapm_paths; int dapm_widgets; int mutex; } ;
struct platform_device {int dummy; } ;
typedef scalar_t__ hw_write_t ;
struct TYPE_2__ {struct wm8990_priv* codec; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WM8990_VERSION ;
 scalar_t__ i2c_master_send ;
 int kfree (struct wm8990_priv*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int pr_info (char*,int ) ;
 int wm8990_add_i2c_device (struct platform_device*,struct wm8990_setup_data*) ;
 struct snd_soc_device* wm8990_socdev ;

__attribute__((used)) static int wm8990_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct wm8990_setup_data *setup;
 struct snd_soc_codec *codec;
 struct wm8990_priv *wm8990;
 int ret;

 pr_info("WM8990 Audio Codec %s\n", WM8990_VERSION);

 setup = socdev->codec_data;
 codec = kzalloc(sizeof(struct snd_soc_codec), GFP_KERNEL);
 if (codec == ((void*)0))
  return -ENOMEM;

 wm8990 = kzalloc(sizeof(struct wm8990_priv), GFP_KERNEL);
 if (wm8990 == ((void*)0)) {
  kfree(codec);
  return -ENOMEM;
 }

 codec->private_data = wm8990;
 socdev->card->codec = codec;
 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);
 wm8990_socdev = socdev;

 ret = -ENODEV;
 if (ret != 0) {
  kfree(codec->private_data);
  kfree(codec);
 }
 return ret;
}
