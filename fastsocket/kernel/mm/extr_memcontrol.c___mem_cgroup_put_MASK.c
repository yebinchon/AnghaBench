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
struct mem_cgroup {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC3 (struct mem_cgroup*) ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *mem, int count)
{
	if (FUNC1(count, &mem->refcnt)) {
		struct mem_cgroup *parent = FUNC3(mem);
		FUNC0(mem);
		if (parent)
			FUNC2(parent);
	}
}