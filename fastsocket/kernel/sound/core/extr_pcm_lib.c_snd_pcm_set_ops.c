
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_ops* ops; struct snd_pcm_substream* next; } ;
struct snd_pcm_str {struct snd_pcm_substream* substream; } ;
struct snd_pcm_ops {int dummy; } ;
struct snd_pcm {struct snd_pcm_str* streams; } ;



void snd_pcm_set_ops(struct snd_pcm *pcm, int direction, struct snd_pcm_ops *ops)
{
 struct snd_pcm_str *stream = &pcm->streams[direction];
 struct snd_pcm_substream *substream;

 for (substream = stream->substream; substream != ((void*)0); substream = substream->next)
  substream->ops = ops;
}
