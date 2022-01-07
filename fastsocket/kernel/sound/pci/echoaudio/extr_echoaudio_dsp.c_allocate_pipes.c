
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {int pipe_alloc_mask; int pipe_cyclic_mask; TYPE_1__* comm_page; scalar_t__ bad_board; } ;
struct audiopipe {int index; int interleave; scalar_t__* dma_counter; int state; } ;
struct TYPE_2__ {scalar_t__* position; } ;


 int DE_ACT (char*) ;
 int EAGAIN ;
 int EIO ;
 int PIPE_STATE_STOPPED ;

__attribute__((used)) static int allocate_pipes(struct echoaudio *chip, struct audiopipe *pipe,
     int pipe_index, int interleave)
{
 int i;
 u32 channel_mask;
 char is_cyclic;

 DE_ACT(("allocate_pipes: ch=%d int=%d\n", pipe_index, interleave));

 if (chip->bad_board)
  return -EIO;

 is_cyclic = 1;

 for (channel_mask = i = 0; i < interleave; i++)
  channel_mask |= 1 << (pipe_index + i);
 if (chip->pipe_alloc_mask & channel_mask) {
  DE_ACT(("allocate_pipes: channel already open\n"));
  return -EAGAIN;
 }

 chip->comm_page->position[pipe_index] = 0;
 chip->pipe_alloc_mask |= channel_mask;
 if (is_cyclic)
  chip->pipe_cyclic_mask |= channel_mask;
 pipe->index = pipe_index;
 pipe->interleave = interleave;
 pipe->state = PIPE_STATE_STOPPED;




 pipe->dma_counter = &chip->comm_page->position[pipe_index];
 *pipe->dma_counter = 0;
 DE_ACT(("allocate_pipes: ok\n"));
 return pipe_index;
}
