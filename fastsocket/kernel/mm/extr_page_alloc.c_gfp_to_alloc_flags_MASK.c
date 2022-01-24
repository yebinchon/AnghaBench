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
struct task_struct {int flags; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int ALLOC_CPUSET ; 
 int ALLOC_HARDER ; 
 int ALLOC_HIGH ; 
 int ALLOC_NO_WATERMARKS ; 
 int ALLOC_WMARK_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PF_MEMALLOC ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int __GFP_HIGH ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_WAIT ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC6(gfp_t gfp_mask)
{
	struct task_struct *p = current;
	int alloc_flags = ALLOC_WMARK_MIN | ALLOC_CPUSET;
	const gfp_t wait = gfp_mask & __GFP_WAIT;

	/* __GFP_HIGH is assumed to be the same as ALLOC_HIGH to save a branch. */
	FUNC0(__GFP_HIGH != ALLOC_HIGH);

	/*
	 * The caller may dip into page reserves a bit more if the caller
	 * cannot run direct reclaim, or if the caller has realtime scheduling
	 * policy or is asking for __GFP_HIGH memory.  GFP_ATOMIC requests will
	 * set both ALLOC_HARDER (!wait) and ALLOC_HIGH (__GFP_HIGH).
	 */
	alloc_flags |= (gfp_mask & __GFP_HIGH);

	if (!wait) {
		/*
		 * Not worth trying to allocate harder for
		 * __GFP_NOMEMALLOC even if it can't schedule.
		 */
		if  (!(gfp_mask & __GFP_NOMEMALLOC))
			alloc_flags |= ALLOC_HARDER;
		/*
		 * Ignore cpuset if GFP_ATOMIC (!wait) rather than fail alloc.
		 * See also cpuset_zone_allowed() comment in kernel/cpuset.c.
		 */
		alloc_flags &= ~ALLOC_CPUSET;
	} else if (FUNC5(FUNC3(p)) && !FUNC1())
		alloc_flags |= ALLOC_HARDER;

	if (FUNC2(!(gfp_mask & __GFP_NOMEMALLOC))) {
		if (!FUNC1() &&
		    ((p->flags & PF_MEMALLOC) ||
		     FUNC5(FUNC4(TIF_MEMDIE))))
			alloc_flags |= ALLOC_NO_WATERMARKS;
	}

	return alloc_flags;
}