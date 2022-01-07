
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int reg_lock; } ;
struct m3_dma {int running; } ;
struct TYPE_2__ {struct m3_dma* private_data; } ;


 int EBUSY ;
 int EINVAL ;
 int ENXIO ;




 scalar_t__ snd_BUG_ON (int) ;
 int snd_m3_pcm_start (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 int snd_m3_pcm_stop (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 struct snd_m3* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
snd_m3_pcm_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct snd_m3 *chip = snd_pcm_substream_chip(subs);
 struct m3_dma *s = subs->runtime->private_data;
 int err = -EINVAL;

 if (snd_BUG_ON(!s))
  return -ENXIO;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  if (s->running)
   err = -EBUSY;
  else {
   s->running = 1;
   err = snd_m3_pcm_start(chip, s, subs);
  }
  break;
 case 129:
 case 128:
  if (! s->running)
   err = 0;
  else {
   s->running = 0;
   err = snd_m3_pcm_stop(chip, s, subs);
  }
  break;
 }
 spin_unlock(&chip->reg_lock);
 return err;
}
