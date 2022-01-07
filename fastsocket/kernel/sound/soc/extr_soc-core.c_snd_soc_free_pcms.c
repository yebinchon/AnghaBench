
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {int dev; TYPE_1__* card; } ;
struct snd_soc_dai {scalar_t__ ac97_control; } ;
struct snd_soc_codec {int num_dai; int mutex; scalar_t__ card; int name; scalar_t__ ac97; struct snd_soc_dai* dai; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int dev_attr_codec_reg ;
 int device_remove_file (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_free (scalar_t__) ;
 int soc_ac97_dev_unregister (struct snd_soc_codec*) ;
 int soc_cleanup_codec_debugfs (struct snd_soc_codec*) ;
 scalar_t__ strcmp (int ,char*) ;

void snd_soc_free_pcms(struct snd_soc_device *socdev)
{
 struct snd_soc_codec *codec = socdev->card->codec;





 mutex_lock(&codec->mutex);
 soc_cleanup_codec_debugfs(codec);
 if (codec->card)
  snd_card_free(codec->card);
 device_remove_file(socdev->dev, &dev_attr_codec_reg);
 mutex_unlock(&codec->mutex);
}
