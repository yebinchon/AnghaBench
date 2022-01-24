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
struct ia64_frame_cache {int /*<<< orphan*/  bsp; int /*<<< orphan*/  base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int /*<<< orphan*/  stack_addr; int /*<<< orphan*/  code_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct frame_info*) ; 
 struct frame_id FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 struct ia64_frame_cache* FUNC3 (struct frame_info*,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct frame_info *next_frame,
			       void **this_cache, struct frame_id *this_id)
{
  struct ia64_frame_cache *cache =
    FUNC3 (next_frame, this_cache);

  (*this_id) = FUNC1 (cache->base, FUNC2 (next_frame), cache->bsp);
  if (gdbarch_debug >= 1)
    FUNC0 (gdb_stdlog,
			"sigtramp frame id: code 0x%s, stack 0x%s, special 0x%s, next_frame %p\n",
			FUNC4 (this_id->code_addr), 
			FUNC4 (this_id->stack_addr), 
			FUNC4 (cache->bsp), next_frame);
}