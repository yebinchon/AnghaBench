
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_dummy {TYPE_1__* timer_ops; } ;
struct TYPE_2__ {int (* start ) (struct snd_pcm_substream*) ;int (* stop ) (struct snd_pcm_substream*) ;} ;


 int EINVAL ;




 struct snd_dummy* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*) ;

__attribute__((used)) static int dummy_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_dummy *dummy = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 130:
 case 131:
  return dummy->timer_ops->start(substream);
 case 129:
 case 128:
  return dummy->timer_ops->stop(substream);
 }
 return -EINVAL;
}
