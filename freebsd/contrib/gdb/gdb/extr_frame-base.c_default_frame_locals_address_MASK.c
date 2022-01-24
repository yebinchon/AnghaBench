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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,void**) ; 
 struct frame_info* FUNC3 (struct frame_info*) ; 

__attribute__((used)) static CORE_ADDR
FUNC4 (struct frame_info *next_frame, void **this_cache)
{
  if (FUNC1 ())
    {
      /* This is bad.  The computation of per-frame locals address
	 should use a per-frame frame-base.  */
      struct frame_info *this_frame = FUNC3 (next_frame);
      return FUNC0 (this_frame);
    }
  return FUNC2 (next_frame, this_cache);
}