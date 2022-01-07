
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct action_ops {int (* pre_action ) (struct snd_pcm_substream*,int) ;int (* do_action ) (struct snd_pcm_substream*,int) ;int (* undo_action ) (struct snd_pcm_substream*,int) ;int (* post_action ) (struct snd_pcm_substream*,int) ;} ;


 int stub1 (struct snd_pcm_substream*,int) ;
 int stub2 (struct snd_pcm_substream*,int) ;
 int stub3 (struct snd_pcm_substream*,int) ;
 int stub4 (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_pcm_action_single(struct action_ops *ops,
     struct snd_pcm_substream *substream,
     int state)
{
 int res;

 res = ops->pre_action(substream, state);
 if (res < 0)
  return res;
 res = ops->do_action(substream, state);
 if (res == 0)
  ops->post_action(substream, state);
 else if (ops->undo_action)
  ops->undo_action(substream, state);
 return res;
}
