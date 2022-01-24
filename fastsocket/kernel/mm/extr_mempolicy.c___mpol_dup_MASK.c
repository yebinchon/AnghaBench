#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mempolicy {int flags; int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_5__ {struct mempolicy* mempolicy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mempolicy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MPOL_F_REBINDING ; 
 int /*<<< orphan*/  MPOL_REBIND_ONCE ; 
 int /*<<< orphan*/  MPOL_REBIND_STEP2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC3 () ; 
 struct mempolicy* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mempolicy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  policy_cache ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

struct mempolicy *FUNC10(struct mempolicy *old)
{
	struct mempolicy *new = FUNC4(policy_cache, GFP_KERNEL);

	if (!new)
		return FUNC0(-ENOMEM);

	/* task's mempolicy is protected by alloc_lock */
	if (old == current->mempolicy) {
		FUNC8(current);
		*new = *old;
		FUNC9(current);
	} else
		*new = *old;

	FUNC6();
	if (FUNC3()) {
		nodemask_t mems = FUNC2(current);
		if (new->flags & MPOL_F_REBINDING)
			FUNC5(new, &mems, MPOL_REBIND_STEP2);
		else
			FUNC5(new, &mems, MPOL_REBIND_ONCE);
	}
	FUNC7();
	FUNC1(&new->refcnt, 1);
	return new;
}