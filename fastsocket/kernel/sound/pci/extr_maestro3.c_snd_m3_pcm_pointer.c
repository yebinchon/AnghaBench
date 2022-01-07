
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int reg_lock; } ;
struct m3_dma {int dummy; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct m3_dma* private_data; } ;


 int bytes_to_frames (TYPE_1__*,unsigned int) ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned int snd_m3_get_pointer (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 struct snd_m3* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_m3_pcm_pointer(struct snd_pcm_substream *subs)
{
 struct snd_m3 *chip = snd_pcm_substream_chip(subs);
 unsigned int ptr;
 struct m3_dma *s = subs->runtime->private_data;

 if (snd_BUG_ON(!s))
  return 0;

 spin_lock(&chip->reg_lock);
 ptr = snd_m3_get_pointer(chip, s, subs);
 spin_unlock(&chip->reg_lock);
 return bytes_to_frames(subs->runtime, ptr);
}
