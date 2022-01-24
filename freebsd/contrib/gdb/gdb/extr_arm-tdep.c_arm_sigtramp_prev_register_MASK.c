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
struct arm_prologue_cache {int /*<<< orphan*/  saved_regs; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 void* FUNC0 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *,int*,void*) ; 

__attribute__((used)) static void
FUNC2 (struct frame_info *next_frame,
			    void **this_cache,
			    int prev_regnum,
			    int *optimized,
			    enum lval_type *lvalp,
			    CORE_ADDR *addrp,
			    int *realnump,
			    void *valuep)
{
  struct arm_prologue_cache *cache;

  if (*this_cache == NULL)
    *this_cache = FUNC0 (next_frame);
  cache = *this_cache;

  FUNC1 (next_frame, cache->saved_regs, prev_regnum,
			    optimized, lvalp, addrp, realnump, valuep);
}