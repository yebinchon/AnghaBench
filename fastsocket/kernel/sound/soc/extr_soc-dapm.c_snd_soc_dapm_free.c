
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {int dev; TYPE_1__* card; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int dapm_free_widgets (struct snd_soc_codec*) ;
 int snd_soc_dapm_sys_remove (int ) ;

void snd_soc_dapm_free(struct snd_soc_device *socdev)
{
 struct snd_soc_codec *codec = socdev->card->codec;

 snd_soc_dapm_sys_remove(socdev->dev);
 dapm_free_widgets(codec);
}
