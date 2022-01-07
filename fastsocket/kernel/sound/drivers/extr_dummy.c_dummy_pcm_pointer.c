
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_dummy {TYPE_1__* timer_ops; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int (* pointer ) (struct snd_pcm_substream*) ;} ;


 struct snd_dummy* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t dummy_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_dummy *dummy = snd_pcm_substream_chip(substream);

 return dummy->timer_ops->pointer(substream);
}
