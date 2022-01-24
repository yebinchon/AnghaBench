#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct mempolicy {scalar_t__ mode; } ;
typedef  int gfp_t ;
struct TYPE_2__ {struct mempolicy* mempolicy; } ;

/* Variables and functions */
 scalar_t__ MPOL_INTERLEAVE ; 
 int __GFP_THISNODE ; 
 struct page* FUNC0 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct mempolicy default_policy ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct mempolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

struct page *FUNC9(gfp_t gfp, unsigned order)
{
	struct mempolicy *pol = current->mempolicy;
	struct page *page;

	if (!pol || FUNC3() || (gfp & __GFP_THISNODE))
		pol = &default_policy;

	FUNC2();
	/*
	 * No reference counting needed for current->mempolicy
	 * nor system default_policy
	 */
	if (pol->mode == MPOL_INTERLEAVE)
		page = FUNC1(gfp, order, FUNC4(pol));
	else
		page = FUNC0(gfp, order,
	      			FUNC7(gfp, pol, FUNC5()),
				FUNC6(gfp, pol));
	FUNC8();
	return page;
}