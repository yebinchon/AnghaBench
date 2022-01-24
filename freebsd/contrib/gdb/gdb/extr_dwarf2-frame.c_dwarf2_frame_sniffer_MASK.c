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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct frame_unwind const dwarf2_frame_unwind ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 

const struct frame_unwind *
FUNC2 (struct frame_info *next_frame)
{
  /* Grab an address that is guarenteed to reside somewhere within the
     function.  frame_pc_unwind(), for a no-return next function, can
     end up returning something past the end of this function's body.  */
  CORE_ADDR block_addr = FUNC1 (next_frame);
  if (FUNC0 (&block_addr))
    return &dwarf2_frame_unwind;

  return NULL;
}