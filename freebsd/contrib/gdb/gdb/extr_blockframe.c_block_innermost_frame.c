
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct block {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BLOCK_END (struct block*) ;
 scalar_t__ BLOCK_START (struct block*) ;
 scalar_t__ get_frame_address_in_block (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

struct frame_info *
block_innermost_frame (struct block *block)
{
  struct frame_info *frame;
  CORE_ADDR start;
  CORE_ADDR end;
  CORE_ADDR calling_pc;

  if (block == ((void*)0))
    return ((void*)0);

  start = BLOCK_START (block);
  end = BLOCK_END (block);

  frame = ((void*)0);
  while (1)
    {
      frame = get_prev_frame (frame);
      if (frame == ((void*)0))
 return ((void*)0);
      calling_pc = get_frame_address_in_block (frame);
      if (calling_pc >= start && calling_pc < end)
 return frame;
    }
}
