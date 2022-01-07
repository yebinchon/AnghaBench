
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8903_priv {struct snd_pcm_substream* slave_substream; struct snd_pcm_substream* master_substream; int capture_active; int playback_active; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8903_priv* private_data; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static void wm8903_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8903_priv *wm8903 = codec->private_data;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  wm8903->playback_active--;
 else
  wm8903->capture_active--;

 if (wm8903->master_substream == substream)
  wm8903->master_substream = wm8903->slave_substream;

 wm8903->slave_substream = ((void*)0);
}
