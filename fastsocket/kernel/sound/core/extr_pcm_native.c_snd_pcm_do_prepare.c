
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* prepare ) (struct snd_pcm_substream*) ;} ;


 int snd_pcm_do_reset (struct snd_pcm_substream*,int ) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_do_prepare(struct snd_pcm_substream *substream, int state)
{
 int err;
 err = substream->ops->prepare(substream);
 if (err < 0)
  return err;
 return snd_pcm_do_reset(substream, 0);
}
