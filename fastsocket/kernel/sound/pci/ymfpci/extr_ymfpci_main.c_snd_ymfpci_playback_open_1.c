
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci_pcm {struct snd_pcm_substream* substream; int type; struct snd_ymfpci* chip; } ;
struct snd_ymfpci {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int private_free; struct snd_ymfpci_pcm* private_data; int hw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PLAYBACK_VOICE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int UINT_MAX ;
 struct snd_ymfpci_pcm* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_pcm_free_substream ;
 int snd_ymfpci_playback ;

__attribute__((used)) static int snd_ymfpci_playback_open_1(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm;

 ypcm = kzalloc(sizeof(*ypcm), GFP_KERNEL);
 if (ypcm == ((void*)0))
  return -ENOMEM;
 ypcm->chip = chip;
 ypcm->type = PLAYBACK_VOICE;
 ypcm->substream = substream;
 runtime->hw = snd_ymfpci_playback;
 runtime->private_data = ypcm;
 runtime->private_free = snd_ymfpci_pcm_free_substream;

 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIOD_TIME, 5333, UINT_MAX);
 return 0;
}
