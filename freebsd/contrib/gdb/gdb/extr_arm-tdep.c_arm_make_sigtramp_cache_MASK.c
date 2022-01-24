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
struct frame_info {int dummy; } ;
struct arm_prologue_cache {size_t framereg; TYPE_1__* saved_regs; int /*<<< orphan*/  prev_sp; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t ARM_SP_REGNUM ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct arm_prologue_cache* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* FUNC6 (struct frame_info*) ; 

__attribute__((used)) static struct arm_prologue_cache *
FUNC7 (struct frame_info *next_frame)
{
  struct arm_prologue_cache *cache;
  int reg;

  cache = FUNC1 (sizeof (struct arm_prologue_cache));

  cache->prev_sp = FUNC3 (next_frame, ARM_SP_REGNUM);

  cache->saved_regs = FUNC6 (next_frame);

  for (reg = 0; reg < NUM_REGS; reg++)
    cache->saved_regs[reg].addr
      = FUNC0 (cache->prev_sp,
				     FUNC2 (next_frame), reg);

  /* FIXME: What about thumb mode?  */
  cache->framereg = ARM_SP_REGNUM;
  cache->prev_sp
    = FUNC4 (cache->saved_regs[cache->framereg].addr,
			   FUNC5 (current_gdbarch, cache->framereg));

  return cache;
}