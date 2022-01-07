
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct echoaudio {int lock; int ** substream; } ;
struct audiopipe {size_t index; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int DE_HWP (char*) ;
 int free_pipes (struct echoaudio*,struct audiopipe*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct echoaudio *chip;
 struct audiopipe *pipe;

 chip = snd_pcm_substream_chip(substream);
 pipe = (struct audiopipe *) substream->runtime->private_data;

 spin_lock_irq(&chip->lock);
 if (pipe->index >= 0) {
  DE_HWP(("pcm_hw_free(%d)\n", pipe->index));
  free_pipes(chip, pipe);
  chip->substream[pipe->index] = ((void*)0);
  pipe->index = -1;
 }
 spin_unlock_irq(&chip->lock);

 DE_HWP(("pcm_hw_freed\n"));
 snd_pcm_lib_free_pages(substream);
 return 0;
}
