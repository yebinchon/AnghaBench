
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int reg_lock; } ;
struct m3_dma {scalar_t__ opened; scalar_t__ running; scalar_t__ in_lists; int * index; int * index_list; scalar_t__ substream; } ;
struct TYPE_2__ {struct m3_dma* private_data; } ;


 int snd_m3_pcm_stop (struct snd_m3*,struct m3_dma*,scalar_t__) ;
 int snd_m3_remove_list (struct snd_m3*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
snd_m3_substream_close(struct snd_m3 *chip, struct snd_pcm_substream *subs)
{
 struct m3_dma *s = subs->runtime->private_data;

 if (s == ((void*)0))
  return;

 spin_lock_irq(&chip->reg_lock);
 if (s->substream && s->running)
  snd_m3_pcm_stop(chip, s, s->substream);
 if (s->in_lists) {
  snd_m3_remove_list(chip, s->index_list[0], s->index[0]);
  snd_m3_remove_list(chip, s->index_list[1], s->index[1]);
  snd_m3_remove_list(chip, s->index_list[2], s->index[2]);
  s->in_lists = 0;
 }
 s->running = 0;
 s->opened = 0;
 spin_unlock_irq(&chip->reg_lock);
}
