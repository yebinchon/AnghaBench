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
struct mm_struct {int /*<<< orphan*/  owner; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct mem_cgroup *FUNC6(struct mm_struct *mm)
{
	struct mem_cgroup *mem = NULL;

	if (!mm)
		return NULL;
	/*
	 * Because we have no locks, mm->owner's may be being moved to other
	 * cgroup. We use css_tryget() here even if this looks
	 * pessimistic (rather than adding locks here).
	 */
	FUNC3();
	do {
		mem = FUNC1(FUNC2(mm->owner));
		if (FUNC5(!mem))
			break;
	} while (!FUNC0(&mem->css));
	FUNC4();
	return mem;
}