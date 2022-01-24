#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mips_frame_cache {TYPE_1__* saved_regs; int /*<<< orphan*/  base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct TYPE_4__ {size_t pc; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t NUM_REGS ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct frame_id FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mips_frame_cache* FUNC2 (struct frame_info*,void**) ; 

__attribute__((used)) static void 
FUNC3 (struct frame_info *next_frame,
                                 void **this_cache,
				 struct frame_id *this_id)
{
  struct mips_frame_cache *cache =
    FUNC2 (next_frame, this_cache);

    (*this_id) = FUNC0 (cache->base, 
	cache->saved_regs[NUM_REGS + FUNC1 (current_gdbarch)->pc].addr);
}