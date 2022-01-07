
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uda1380_priv {int work; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct uda1380_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int R14_SILENCE ;




 int UDA1380_MIXER ;
 int schedule_work (int *) ;
 int uda1380_read_reg_cache (struct snd_soc_codec*,int ) ;
 int uda1380_write_reg_cache (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int uda1380_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct uda1380_priv *uda1380 = codec->private_data;
 int mixer = uda1380_read_reg_cache(codec, UDA1380_MIXER);

 switch (cmd) {
 case 129:
 case 130:
  uda1380_write_reg_cache(codec, UDA1380_MIXER,
     mixer & ~R14_SILENCE);
  schedule_work(&uda1380->work);
  break;
 case 128:
 case 131:
  uda1380_write_reg_cache(codec, UDA1380_MIXER,
     mixer | R14_SILENCE);
  schedule_work(&uda1380->work);
  break;
 }
 return 0;
}
