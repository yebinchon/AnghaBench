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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct page*,struct mem_cgroup*,int /*<<< orphan*/ ) ; 

void FUNC1(struct page *page, struct mem_cgroup *ptr)
{
	FUNC0(page, ptr,
					MEM_CGROUP_CHARGE_TYPE_MAPPED);
}