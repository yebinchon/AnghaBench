
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct go7007_snd {int lock; struct snd_pcm_substream* substream; } ;
struct go7007 {struct go7007_snd* snd_context; } ;
struct TYPE_2__ {int hw; } ;


 int EBUSY ;
 int go7007_snd_capture_hw ;
 struct go7007* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int go7007_snd_capture_open(struct snd_pcm_substream *substream)
{
 struct go7007 *go = snd_pcm_substream_chip(substream);
 struct go7007_snd *gosnd = go->snd_context;
 unsigned long flags;
 int r;

 spin_lock_irqsave(&gosnd->lock, flags);
 if (gosnd->substream == ((void*)0)) {
  gosnd->substream = substream;
  substream->runtime->hw = go7007_snd_capture_hw;
  r = 0;
 } else
  r = -EBUSY;
 spin_unlock_irqrestore(&gosnd->lock, flags);
 return r;
}
