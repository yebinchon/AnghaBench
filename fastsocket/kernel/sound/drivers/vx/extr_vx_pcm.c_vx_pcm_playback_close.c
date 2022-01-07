
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_pipe {scalar_t__ references; size_t number; } ;
struct vx_core {int ** playback_pipes; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct vx_pipe* private_data; } ;


 int EINVAL ;
 struct vx_core* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vx_free_pipe (struct vx_core*,struct vx_pipe*) ;

__attribute__((used)) static int vx_pcm_playback_close(struct snd_pcm_substream *subs)
{
 struct vx_core *chip = snd_pcm_substream_chip(subs);
 struct vx_pipe *pipe;

 if (! subs->runtime->private_data)
  return -EINVAL;

 pipe = subs->runtime->private_data;

 if (--pipe->references == 0) {
  chip->playback_pipes[pipe->number] = ((void*)0);
  vx_free_pipe(chip, pipe);
 }

 return 0;

}
