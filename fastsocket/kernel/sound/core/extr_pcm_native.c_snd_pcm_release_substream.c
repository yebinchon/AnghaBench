
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ ref_count; int (* pcm_release ) (struct snd_pcm_substream*) ;scalar_t__ hw_opened; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* close ) (struct snd_pcm_substream*) ;int (* hw_free ) (struct snd_pcm_substream*) ;} ;


 int snd_pcm_detach_substream (struct snd_pcm_substream*) ;
 int snd_pcm_drop (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*) ;
 int stub3 (struct snd_pcm_substream*) ;

void snd_pcm_release_substream(struct snd_pcm_substream *substream)
{
 substream->ref_count--;
 if (substream->ref_count > 0)
  return;

 snd_pcm_drop(substream);
 if (substream->hw_opened) {
  if (substream->ops->hw_free != ((void*)0))
   substream->ops->hw_free(substream);
  substream->ops->close(substream);
  substream->hw_opened = 0;
 }
 if (substream->pcm_release) {
  substream->pcm_release(substream);
  substream->pcm_release = ((void*)0);
 }
 snd_pcm_detach_substream(substream);
}
