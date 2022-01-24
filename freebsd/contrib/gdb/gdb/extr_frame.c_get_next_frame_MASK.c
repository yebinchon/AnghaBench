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
struct frame_info {scalar_t__ level; struct frame_info* next; } ;

/* Variables and functions */

struct frame_info *
FUNC0 (struct frame_info *this_frame)
{
  if (this_frame->level > 0)
    return this_frame->next;
  else
    return NULL;
}