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
struct vm_area_struct {int /*<<< orphan*/  vm_end; } ;
struct shared_policy {int /*<<< orphan*/  lock; int /*<<< orphan*/  root; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_nodemask; } ;
struct mempolicy {TYPE_1__ w; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  TASK_SIZE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 struct mempolicy* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mempolicy*) ; 
 int FUNC6 (struct mempolicy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct shared_policy*,struct vm_area_struct*,struct mempolicy*) ; 
 int /*<<< orphan*/  scratch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct shared_policy *sp, struct mempolicy *mpol)
{
	int ret;

	sp->root = RB_ROOT;		/* empty tree == default mempolicy */
	FUNC8(&sp->lock);

	if (mpol) {
		struct vm_area_struct pvma;
		struct mempolicy *new;
		FUNC1(scratch);

		if (!scratch)
			return;
		/* contextualize the tmpfs mount point mempolicy */
		new = FUNC4(mpol->mode, mpol->flags, &mpol->w.user_nodemask);
		if (FUNC0(new)) {
			FUNC5(mpol);	/* drop our ref on sb mpol */
			FUNC2(scratch);
			return;		/* no valid nodemask intersection */
		}

		FUNC9(current);
		ret = FUNC6(new, &mpol->w.user_nodemask, scratch);
		FUNC10(current);
		FUNC5(mpol);	/* drop our ref on sb mpol */
		if (ret) {
			FUNC2(scratch);
			FUNC5(new);
			return;
		}

		/* Create pseudo-vma that contains just the policy */
		FUNC3(&pvma, 0, sizeof(struct vm_area_struct));
		pvma.vm_end = TASK_SIZE;	/* policy covers entire file */
		FUNC7(sp, &pvma, new); /* adds ref */
		FUNC5(new);			/* drop initial ref */
		FUNC2(scratch);
	}
}