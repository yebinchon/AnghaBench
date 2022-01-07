
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8971_setup_data {scalar_t__ i2c_address; } ;
struct wm8971_priv {struct wm8971_priv* private_data; int delayed_work; int dapm_paths; int dapm_widgets; int mutex; } ;
struct snd_soc_device {TYPE_1__* card; struct wm8971_setup_data* codec_data; } ;
struct snd_soc_codec {struct snd_soc_codec* private_data; int delayed_work; int dapm_paths; int dapm_widgets; int mutex; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct wm8971_priv* codec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int WM8971_VERSION ;
 int * create_workqueue (char*) ;
 int destroy_workqueue (int *) ;
 int kfree (struct wm8971_priv*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int pr_info (char*,int ) ;
 int wm8971_add_i2c_device (struct platform_device*,struct wm8971_setup_data*) ;
 struct snd_soc_device* wm8971_socdev ;
 int wm8971_work ;
 int * wm8971_workq ;

__attribute__((used)) static int wm8971_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct wm8971_setup_data *setup;
 struct snd_soc_codec *codec;
 struct wm8971_priv *wm8971;
 int ret = 0;

 pr_info("WM8971 Audio Codec %s", WM8971_VERSION);

 setup = socdev->codec_data;
 codec = kzalloc(sizeof(struct snd_soc_codec), GFP_KERNEL);
 if (codec == ((void*)0))
  return -ENOMEM;

 wm8971 = kzalloc(sizeof(struct wm8971_priv), GFP_KERNEL);
 if (wm8971 == ((void*)0)) {
  kfree(codec);
  return -ENOMEM;
 }

 codec->private_data = wm8971;
 socdev->card->codec = codec;
 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);
 wm8971_socdev = socdev;

 INIT_DELAYED_WORK(&codec->delayed_work, wm8971_work);
 wm8971_workq = create_workqueue("wm8971");
 if (wm8971_workq == ((void*)0)) {
  kfree(codec->private_data);
  kfree(codec);
  return -ENOMEM;
 }
 if (ret != 0) {
  destroy_workqueue(wm8971_workq);
  kfree(codec->private_data);
  kfree(codec);
 }

 return ret;
}
