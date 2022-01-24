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
struct mem_cgroup_stat {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_STAT_CACHE ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_RSS ; 
 scalar_t__ FUNC0 (struct mem_cgroup_stat*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s64 FUNC1(struct mem_cgroup_stat *stat)
{
	s64 ret;

	ret = FUNC0(stat, MEM_CGROUP_STAT_CACHE);
	ret += FUNC0(stat, MEM_CGROUP_STAT_RSS);
	return ret;
}