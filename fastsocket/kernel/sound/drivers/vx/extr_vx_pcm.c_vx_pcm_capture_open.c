
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vx_pipe {struct vx_pipe* monitoring_pipe; int references; int start_tq; struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int size; } ;
struct vx_core {int chip_status; unsigned int audio_ins; TYPE_2__ ibl; scalar_t__* audio_monitor_active; int * audio_monitor; struct vx_pipe** playback_pipes; struct vx_pipe** capture_pipes; } ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int period_bytes_min; } ;
struct snd_pcm_runtime {struct vx_pipe* private_data; TYPE_3__ hw; } ;
struct TYPE_4__ {int device; } ;


 int EBUSY ;
 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int VX_STAT_IS_STALE ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct vx_core* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vx_alloc_pipe (struct vx_core*,int,unsigned int,int,struct vx_pipe**) ;
 TYPE_3__ vx_pcm_capture_hw ;
 int vx_pcm_delayed_start ;
 int vx_set_monitor_level (struct vx_core*,unsigned int,int ,scalar_t__) ;

__attribute__((used)) static int vx_pcm_capture_open(struct snd_pcm_substream *subs)
{
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct vx_core *chip = snd_pcm_substream_chip(subs);
 struct vx_pipe *pipe;
 struct vx_pipe *pipe_out_monitoring = ((void*)0);
 unsigned int audio;
 int err;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return -EBUSY;

 audio = subs->pcm->device * 2;
 if (snd_BUG_ON(audio >= chip->audio_ins))
  return -EINVAL;
 err = vx_alloc_pipe(chip, 1, audio, 2, &pipe);
 if (err < 0)
  return err;
 pipe->substream = subs;
 tasklet_init(&pipe->start_tq, vx_pcm_delayed_start, (unsigned long)subs);
 chip->capture_pipes[audio] = pipe;


 if (chip->audio_monitor_active[audio]) {
  pipe_out_monitoring = chip->playback_pipes[audio];
  if (! pipe_out_monitoring) {

   err = vx_alloc_pipe(chip, 0, audio, 2, &pipe_out_monitoring);
   if (err < 0)
    return err;
   chip->playback_pipes[audio] = pipe_out_monitoring;
  }
  pipe_out_monitoring->references++;




  vx_set_monitor_level(chip, audio, chip->audio_monitor[audio],
         chip->audio_monitor_active[audio]);

  vx_set_monitor_level(chip, audio+1, chip->audio_monitor[audio+1],
         chip->audio_monitor_active[audio+1]);
 }

 pipe->monitoring_pipe = pipe_out_monitoring;

 runtime->hw = vx_pcm_capture_hw;
 runtime->hw.period_bytes_min = chip->ibl.size;
 runtime->private_data = pipe;


 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 4);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 4);

 return 0;
}
