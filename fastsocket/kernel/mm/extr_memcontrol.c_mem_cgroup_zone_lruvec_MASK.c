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
struct lruvec {int dummy; } ;
struct zone {struct lruvec lruvec; } ;
struct mem_cgroup_per_zone {struct lruvec lruvec; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct mem_cgroup_per_zone* FUNC1 (struct mem_cgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*) ; 

struct lruvec *FUNC4(struct zone *zone,
				      struct mem_cgroup *memcg)
{
	struct mem_cgroup_per_zone *mz;

	if (FUNC0())
		return &zone->lruvec;

	mz = FUNC1(memcg, FUNC3(zone), FUNC2(zone));
	return &mz->lruvec;
}