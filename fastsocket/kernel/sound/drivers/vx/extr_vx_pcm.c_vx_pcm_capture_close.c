
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_pipe {size_t number; scalar_t__ references; struct vx_pipe* monitoring_pipe; } ;
struct vx_core {int ** playback_pipes; int ** capture_pipes; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct vx_pipe* private_data; } ;


 int EINVAL ;
 struct vx_core* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vx_free_pipe (struct vx_core*,struct vx_pipe*) ;

__attribute__((used)) static int vx_pcm_capture_close(struct snd_pcm_substream *subs)
{
 struct vx_core *chip = snd_pcm_substream_chip(subs);
 struct vx_pipe *pipe;
 struct vx_pipe *pipe_out_monitoring;

 if (! subs->runtime->private_data)
  return -EINVAL;
 pipe = subs->runtime->private_data;
 chip->capture_pipes[pipe->number] = ((void*)0);

 pipe_out_monitoring = pipe->monitoring_pipe;





 if (pipe_out_monitoring) {
  if (--pipe_out_monitoring->references == 0) {
   vx_free_pipe(chip, pipe_out_monitoring);
   chip->playback_pipes[pipe->number] = ((void*)0);
   pipe->monitoring_pipe = ((void*)0);
  }
 }

 vx_free_pipe(chip, pipe);
 return 0;
}
