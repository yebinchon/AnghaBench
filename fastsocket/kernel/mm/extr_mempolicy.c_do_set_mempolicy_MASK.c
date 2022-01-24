#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_5__ {int /*<<< orphan*/  nodes; } ;
struct mempolicy {scalar_t__ mode; TYPE_1__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_6__ {int /*<<< orphan*/  il_next; struct mempolicy* mempolicy; struct mm_struct* mm; } ;

/* Variables and functions */
 long ENOMEM ; 
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 scalar_t__ MPOL_INTERLEAVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mempolicy*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mempolicy* FUNC6 (unsigned short,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mempolicy*) ; 
 int FUNC8 (struct mempolicy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scratch ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC14(unsigned short mode, unsigned short flags,
			     nodemask_t *nodes)
{
	struct mempolicy *new, *old;
	struct mm_struct *mm = current->mm;
	FUNC1(scratch);
	int ret;

	if (!scratch)
		return -ENOMEM;

	new = FUNC6(mode, flags, nodes);
	if (FUNC0(new)) {
		ret = FUNC3(new);
		goto out;
	}
	/*
	 * prevent changing our mempolicy while show_numa_maps()
	 * is using it.
	 * Note:  do_set_mempolicy() can be called at init time
	 * with no 'mm'.
	 */
	if (mm)
		FUNC4(&mm->mmap_sem);
	FUNC11(current);
	ret = FUNC8(new, nodes, scratch);
	if (ret) {
		FUNC12(current);
		if (mm)
			FUNC13(&mm->mmap_sem);
		FUNC7(new);
		goto out;
	}
	old = current->mempolicy;
	current->mempolicy = new;
	FUNC9();
	if (new && new->mode == MPOL_INTERLEAVE &&
	    FUNC10(new->v.nodes))
		current->il_next = FUNC5(new->v.nodes);
	FUNC12(current);
	if (mm)
		FUNC13(&mm->mmap_sem);

	FUNC7(old);
	ret = 0;
out:
	FUNC2(scratch);
	return ret;
}