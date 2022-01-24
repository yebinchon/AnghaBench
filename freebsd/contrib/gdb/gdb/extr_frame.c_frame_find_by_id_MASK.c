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

/* Variables and functions */
 scalar_t__ FUNC0 (struct frame_id,struct frame_id) ; 
 scalar_t__ FUNC1 (struct frame_id,struct frame_id) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_id) ; 
 struct frame_info* FUNC3 () ; 
 struct frame_id FUNC4 (struct frame_info*) ; 
 struct frame_info* FUNC5 (struct frame_info*) ; 

struct frame_info *
FUNC6 (struct frame_id id)
{
  struct frame_info *frame;

  /* ZERO denotes the null frame, let the caller decide what to do
     about it.  Should it instead return get_current_frame()?  */
  if (!FUNC2 (id))
    return NULL;

  for (frame = FUNC3 ();
       frame != NULL;
       frame = FUNC5 (frame))
    {
      struct frame_id this = FUNC4 (frame);
      if (FUNC0 (id, this))
	/* An exact match.  */
	return frame;
      if (FUNC1 (id, this))
	/* Gone to far.  */
	return NULL;
      /* Either, we're not yet gone far enough out along the frame
         chain (inner(this,id), or we're comparing frameless functions
         (same .base, different .func, no test available).  Struggle
         on until we've definitly gone to far.  */
    }
  return NULL;
}