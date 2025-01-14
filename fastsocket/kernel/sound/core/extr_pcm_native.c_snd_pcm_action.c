
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct snd_pcm_substream {TYPE_1__* group; TYPE_2__ self_group; } ;
struct action_ops {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int snd_pcm_action_group (struct action_ops*,struct snd_pcm_substream*,int,int) ;
 int snd_pcm_action_single (struct action_ops*,struct snd_pcm_substream*,int) ;
 scalar_t__ snd_pcm_stream_linked (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_pcm_action(struct action_ops *ops,
     struct snd_pcm_substream *substream,
     int state)
{
 int res;

 if (snd_pcm_stream_linked(substream)) {
  if (!spin_trylock(&substream->group->lock)) {
   spin_unlock(&substream->self_group.lock);
   spin_lock(&substream->group->lock);
   spin_lock(&substream->self_group.lock);
  }
  res = snd_pcm_action_group(ops, substream, state, 1);
  spin_unlock(&substream->group->lock);
 } else {
  res = snd_pcm_action_single(ops, substream, state);
 }
 return res;
}
