
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int position; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct vx_pipe* private_data; } ;
typedef int snd_pcm_uframes_t ;



__attribute__((used)) static snd_pcm_uframes_t vx_pcm_playback_pointer(struct snd_pcm_substream *subs)
{
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct vx_pipe *pipe = runtime->private_data;
 return pipe->position;
}
