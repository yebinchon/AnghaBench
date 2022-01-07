
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct echoaudio {int pipe_alloc_mask; int pipe_cyclic_mask; } ;
struct audiopipe {int index; scalar_t__ state; int interleave; } ;


 int DE_ACT (char*) ;
 int EINVAL ;
 scalar_t__ PIPE_STATE_STOPPED ;
 int is_pipe_allocated (struct echoaudio*,int) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int free_pipes(struct echoaudio *chip, struct audiopipe *pipe)
{
 u32 channel_mask;
 int i;

 DE_ACT(("free_pipes: Pipe %d\n", pipe->index));
 if (snd_BUG_ON(!is_pipe_allocated(chip, pipe->index)))
  return -EINVAL;
 if (snd_BUG_ON(pipe->state != PIPE_STATE_STOPPED))
  return -EINVAL;

 for (channel_mask = i = 0; i < pipe->interleave; i++)
  channel_mask |= 1 << (pipe->index + i);

 chip->pipe_alloc_mask &= ~channel_mask;
 chip->pipe_cyclic_mask &= ~channel_mask;
 return 0;
}
