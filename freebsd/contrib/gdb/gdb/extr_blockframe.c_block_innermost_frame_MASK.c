#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct frame_info {int dummy; } ;
struct block {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct block*) ; 
 scalar_t__ FUNC1 (struct block*) ; 
 scalar_t__ FUNC2 (struct frame_info*) ; 
 struct frame_info* FUNC3 (struct frame_info*) ; 

struct frame_info *
FUNC4 (struct block *block)
{
  struct frame_info *frame;
  CORE_ADDR start;
  CORE_ADDR end;
  CORE_ADDR calling_pc;

  if (block == NULL)
    return NULL;

  start = FUNC1 (block);
  end = FUNC0 (block);

  frame = NULL;
  while (1)
    {
      frame = FUNC3 (frame);
      if (frame == NULL)
	return NULL;
      calling_pc = FUNC2 (frame);
      if (calling_pc >= start && calling_pc < end)
	return frame;
    }
}