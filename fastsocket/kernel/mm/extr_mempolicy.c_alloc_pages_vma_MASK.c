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
struct zonelist {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mempolicy {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ MPOL_INTERLEAVE ; 
 scalar_t__ PAGE_SHIFT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int,struct zonelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mempolicy*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mempolicy* FUNC4 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long) ; 
 unsigned int FUNC5 (struct mempolicy*,struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mempolicy*) ; 
 int FUNC7 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mempolicy*) ; 
 struct zonelist* FUNC9 (int /*<<< orphan*/ ,struct mempolicy*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

struct page *
FUNC12(gfp_t gfp, int order, struct vm_area_struct *vma,
		unsigned long addr, int node)
{
	struct mempolicy *pol = FUNC4(current, vma, addr);
	struct zonelist *zl;
	struct page *page;

	FUNC3();
	if (FUNC11(pol->mode == MPOL_INTERLEAVE)) {
		unsigned nid;

		nid = FUNC5(pol, vma, addr, PAGE_SHIFT + order);
		FUNC6(pol);
		page = FUNC2(gfp, order, nid);
		FUNC10();
		return page;
	}
	zl = FUNC9(gfp, pol, node);
	if (FUNC11(FUNC7(pol))) {
		/*
		 * slow path: ref counted shared policy
		 */
		struct page *page =  FUNC0(gfp, order,
						zl, FUNC8(gfp, pol));
		FUNC1(pol);
		FUNC10();
		return page;
	}
	/*
	 * fast path:  default or task policy
	 */
	page = FUNC0(gfp, order, zl,
				      FUNC8(gfp, pol));
	FUNC10();
	return page;
}