#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int p; int /*<<< orphan*/  addr; } ;
struct frame_info {TYPE_1__ prev_func; int /*<<< orphan*/  level; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_debug ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC4 (struct frame_info *fi)
{
  if (!fi->prev_func.p)
    {
      /* Make certain that this, and not the adjacent, function is
         found.  */
      CORE_ADDR addr_in_block = FUNC1 (fi);
      fi->prev_func.p = 1;
      fi->prev_func.addr = FUNC2 (addr_in_block);
      if (frame_debug)
	FUNC0 (gdb_stdlog,
			    "{ frame_func_unwind (fi=%d) -> 0x%s }\n",
			    fi->level, FUNC3 (fi->prev_func.addr));
    }
  return fi->prev_func.addr;
}