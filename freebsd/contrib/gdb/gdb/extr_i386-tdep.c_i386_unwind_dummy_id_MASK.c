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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  I386_EBP_REGNUM ; 
 scalar_t__ FUNC0 (char*,int) ; 
 struct frame_id FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct frame_id
FUNC4 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  char buf[4];
  CORE_ADDR fp;

  FUNC3 (next_frame, I386_EBP_REGNUM, buf);
  fp = FUNC0 (buf, 4);

  /* See the end of i386_push_dummy_call.  */
  return FUNC1 (fp + 8, FUNC2 (next_frame));
}