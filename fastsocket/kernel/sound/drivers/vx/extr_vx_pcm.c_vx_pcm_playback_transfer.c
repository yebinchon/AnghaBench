
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_pipe {int prepared; } ;
struct TYPE_2__ {int size; } ;
struct vx_core {int chip_status; TYPE_1__ ibl; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;


 int VX_STAT_IS_STALE ;
 int vx_pcm_playback_transfer_chunk (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*,int ) ;

__attribute__((used)) static void vx_pcm_playback_transfer(struct vx_core *chip,
         struct snd_pcm_substream *subs,
         struct vx_pipe *pipe, int nchunks)
{
 int i, err;
 struct snd_pcm_runtime *runtime = subs->runtime;

 if (! pipe->prepared || (chip->chip_status & VX_STAT_IS_STALE))
  return;
 for (i = 0; i < nchunks; i++) {
  if ((err = vx_pcm_playback_transfer_chunk(chip, runtime, pipe,
         chip->ibl.size)) < 0)
   return;
 }
}
