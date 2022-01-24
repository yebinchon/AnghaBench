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
struct arm_prologue_cache {scalar_t__ prev_sp; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ LOWEST_PC ; 
 scalar_t__ NORMAL_FRAME ; 
 void* FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (struct frame_info*) ; 
 struct frame_id FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct frame_id) ; 
 scalar_t__ FUNC4 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*) ; 
 scalar_t__ FUNC6 (struct frame_info*) ; 

__attribute__((used)) static void
FUNC7 (struct frame_info *next_frame,
		      void **this_cache,
		      struct frame_id *this_id)
{
  struct arm_prologue_cache *cache;
  struct frame_id id;
  CORE_ADDR func;

  if (*this_cache == NULL)
    *this_cache = FUNC0 (next_frame);
  cache = *this_cache;

  func = FUNC1 (next_frame);

  /* This is meant to halt the backtrace at "_start".  Make sure we
     don't halt it at a generic dummy frame. */
  if (func <= LOWEST_PC)
    return;

  /* If we've hit a wall, stop.  */
  if (cache->prev_sp == 0)
    return;

  id = FUNC2 (cache->prev_sp, func);

  /* Check that we're not going round in circles with the same frame
     ID (but avoid applying the test to sentinel frames which do go
     round in circles).  */
  if (FUNC4 (next_frame) >= 0
      && FUNC6 (next_frame) == NORMAL_FRAME
      && FUNC3 (FUNC5 (next_frame), id))
    return;

  *this_id = id;
}