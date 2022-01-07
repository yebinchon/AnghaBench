
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_dummy {TYPE_1__* timer_ops; } ;
struct TYPE_2__ {int (* prepare ) (struct snd_pcm_substream*) ;} ;


 struct snd_dummy* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int dummy_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_dummy *dummy = snd_pcm_substream_chip(substream);

 return dummy->timer_ops->prepare(substream);
}
