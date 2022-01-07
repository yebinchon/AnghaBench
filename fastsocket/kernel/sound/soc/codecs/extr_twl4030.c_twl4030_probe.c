
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_priv {int dummy; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dapm_paths; int dapm_widgets; int mutex; struct twl4030_priv* private_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct snd_soc_codec*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int twl4030_init (struct snd_soc_device*) ;
 struct snd_soc_device* twl4030_socdev ;

__attribute__((used)) static int twl4030_probe(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec;
 struct twl4030_priv *twl4030;

 codec = kzalloc(sizeof(struct snd_soc_codec), GFP_KERNEL);
 if (codec == ((void*)0))
  return -ENOMEM;

 twl4030 = kzalloc(sizeof(struct twl4030_priv), GFP_KERNEL);
 if (twl4030 == ((void*)0)) {
  kfree(codec);
  return -ENOMEM;
 }

 codec->private_data = twl4030;
 socdev->card->codec = codec;
 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);

 twl4030_socdev = socdev;
 twl4030_init(socdev);

 return 0;
}
