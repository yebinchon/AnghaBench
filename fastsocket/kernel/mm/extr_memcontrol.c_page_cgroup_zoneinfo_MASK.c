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
struct page {int dummy; } ;
struct mem_cgroup_per_zone {int dummy; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 struct mem_cgroup_per_zone* FUNC0 (struct mem_cgroup*,int,int) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 

__attribute__((used)) static struct mem_cgroup_per_zone *
FUNC3(struct mem_cgroup *mem, struct page *page)
{
	int nid = FUNC1(page);
	int zid = FUNC2(page);

	return FUNC0(mem, nid, zid);
}