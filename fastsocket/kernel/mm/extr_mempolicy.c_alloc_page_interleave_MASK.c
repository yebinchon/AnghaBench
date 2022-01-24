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
struct zonelist {int /*<<< orphan*/ * _zonerefs; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_INTERLEAVE_HIT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,unsigned int,struct zonelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 struct zonelist* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC5(gfp_t gfp, unsigned order,
					unsigned nid)
{
	struct zonelist *zl;
	struct page *page;

	zl = FUNC2(nid, gfp);
	page = FUNC0(gfp, order, zl);
	if (page && FUNC3(page) == FUNC4(&zl->_zonerefs[0]))
		FUNC1(page, NUMA_INTERLEAVE_HIT);
	return page;
}