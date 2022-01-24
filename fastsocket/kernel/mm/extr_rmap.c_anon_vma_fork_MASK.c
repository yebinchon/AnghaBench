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
struct vm_area_struct {struct anon_vma* anon_vma; } ;
struct anon_vma_chain {int dummy; } ;
struct anon_vma {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct anon_vma* FUNC0 () ; 
 struct anon_vma_chain* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,struct anon_vma_chain*,struct anon_vma*) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 

int FUNC7(struct vm_area_struct *vma, struct vm_area_struct *pvma)
{
	struct anon_vma_chain *avc;
	struct anon_vma *anon_vma;

	/* Don't bother if the parent process has no anon_vma here. */
	if (!pvma->anon_vma)
		return 0;

	/*
	 * First, attach the new VMA to the parent VMA's anon_vmas,
	 * so rmap can find non-COWed pages in child processes.
	 */
	if (FUNC3(vma, pvma))
		return -ENOMEM;

	/* Then add our own anon_vma. */
	anon_vma = FUNC0();
	if (!anon_vma)
		goto out_error;
	avc = FUNC1();
	if (!avc)
		goto out_error_free_anon_vma;

	anon_vma->root = pvma->anon_vma->root;
	/*
	 * With KSM refcounts, an anon_vma can stay around longer than the
	 * process it belongs to.  The root anon_vma needs to be pinned
	 * until this anon_vma is freed, because that is where the lock lives.
	 */
	FUNC5(anon_vma->root);
	/* Mark this anon_vma as the one where our new (COWed) pages go. */
	vma->anon_vma = anon_vma;
	FUNC2(vma, avc, anon_vma);

	return 0;

 out_error_free_anon_vma:
	FUNC4(anon_vma);
 out_error:
	FUNC6(vma);
	return -ENOMEM;
}