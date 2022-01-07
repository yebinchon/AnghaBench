
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; int runtime; struct aaci* private_data; } ;
struct aaci {int capture; int playback; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int __aaci_pcm_open (struct aaci*,struct snd_pcm_substream*,int *) ;
 int aaci_rule_channels ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,struct aaci*,int ,int) ;

__attribute__((used)) static int aaci_pcm_open(struct snd_pcm_substream *substream)
{
 struct aaci *aaci = substream->private_data;
 int ret;




 ret = snd_pcm_hw_rule_add(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      aaci_rule_channels, aaci,
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (ret)
  return ret;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  ret = __aaci_pcm_open(aaci, substream, &aaci->playback);
 } else {
  ret = __aaci_pcm_open(aaci, substream, &aaci->capture);
 }
 return ret;
}
