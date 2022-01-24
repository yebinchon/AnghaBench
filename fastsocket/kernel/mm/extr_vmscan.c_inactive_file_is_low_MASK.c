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
struct mem_cgroup_zone {int /*<<< orphan*/  zone; int /*<<< orphan*/  mem_cgroup; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup_zone*) ; 

__attribute__((used)) static int FUNC3(struct mem_cgroup_zone *mz)
{
	if (!FUNC2(mz))
		return FUNC1(mz->mem_cgroup,
						       mz->zone);

	return FUNC0(mz->zone);
}