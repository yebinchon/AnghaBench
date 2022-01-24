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
struct frame_id {int dummy; } ;
struct arm_prologue_cache {int /*<<< orphan*/  prev_sp; } ;

/* Variables and functions */
 void* FUNC0 (struct frame_info*) ; 
 struct frame_id FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 

__attribute__((used)) static void
FUNC3 (struct frame_info *next_frame,
		      void **this_cache,
		      struct frame_id *this_id)
{
  struct arm_prologue_cache *cache;

  if (*this_cache == NULL)
    *this_cache = FUNC0 (next_frame);
  cache = *this_cache;

  /* FIXME drow/2003-07-07: This isn't right if we single-step within
     the sigtramp frame; the PC should be the beginning of the trampoline.  */
  *this_id = FUNC1 (cache->prev_sp, FUNC2 (next_frame));
}