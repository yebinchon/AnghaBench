
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int dma_area; } ;
struct TYPE_2__ {int mmr1; } ;
struct snd_amd7930 {unsigned int p_left; int lock; TYPE_1__ map; int p_cur; int p_orig; int flags; } ;


 int AMD7930_FLAG_PLAYBACK ;
 int AM_MAP_MMR1_ALAW ;
 scalar_t__ SNDRV_PCM_FORMAT_A_LAW ;
 int __amd7930_update_map (struct snd_amd7930*) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_amd7930* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_amd7930_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_amd7930 *amd = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int size = snd_pcm_lib_buffer_bytes(substream);
 unsigned long flags;
 u8 new_mmr1;

 spin_lock_irqsave(&amd->lock, flags);

 amd->flags |= AMD7930_FLAG_PLAYBACK;


 amd->p_orig = amd->p_cur = runtime->dma_area;
 amd->p_left = size;


 new_mmr1 = amd->map.mmr1;
 if (runtime->format == SNDRV_PCM_FORMAT_A_LAW)
  new_mmr1 |= AM_MAP_MMR1_ALAW;
 else
  new_mmr1 &= ~AM_MAP_MMR1_ALAW;
 if (new_mmr1 != amd->map.mmr1) {
  amd->map.mmr1 = new_mmr1;
  __amd7930_update_map(amd);
 }

 spin_unlock_irqrestore(&amd->lock, flags);

 return 0;
}
