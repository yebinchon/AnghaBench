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
struct sp_node {unsigned long start; unsigned long end; struct mempolicy* policy; } ;
struct mempolicy {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPOL_F_SHARED ; 
 struct sp_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mempolicy*) ; 
 int /*<<< orphan*/  sn_cache ; 

__attribute__((used)) static struct sp_node *FUNC2(unsigned long start, unsigned long end,
				struct mempolicy *pol)
{
	struct sp_node *n = FUNC0(sn_cache, GFP_KERNEL);

	if (!n)
		return NULL;
	n->start = start;
	n->end = end;
	FUNC1(pol);
	pol->flags |= MPOL_F_SHARED;	/* for unref */
	n->policy = pol;
	return n;
}