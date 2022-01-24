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
struct mem_cgroup_tree_per_zone {int /*<<< orphan*/  lock; } ;
struct mem_cgroup_per_zone {int dummy; } ;

/* Variables and functions */
 struct mem_cgroup_per_zone* FUNC0 (struct mem_cgroup_tree_per_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mem_cgroup_per_zone *
FUNC3(struct mem_cgroup_tree_per_zone *mctz)
{
	struct mem_cgroup_per_zone *mz;

	FUNC1(&mctz->lock);
	mz = FUNC0(mctz);
	FUNC2(&mctz->lock);
	return mz;
}