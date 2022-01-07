
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct twl4030_priv {scalar_t__ configured; struct snd_pcm_substream* master_substream; struct snd_pcm_substream* slave_substream; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;
struct snd_pcm_substream {int stream; TYPE_2__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {int channels; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;


 int twl4030_tdm_enable (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static void twl4030_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct twl4030_priv *twl4030 = codec->private_data;

 if (twl4030->master_substream == substream)
  twl4030->master_substream = twl4030->slave_substream;

 twl4030->slave_substream = ((void*)0);



 if (!twl4030->master_substream)
  twl4030->configured = 0;
  else if (!twl4030->master_substream->runtime->channels)
  twl4030->configured = 0;


 if (substream->runtime->channels == 4)
  twl4030_tdm_enable(codec, substream->stream, 0);
}
