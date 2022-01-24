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
struct anon_vma_chain {int /*<<< orphan*/  same_anon_vma; struct anon_vma* anon_vma; } ;
struct anon_vma {struct anon_vma* root; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct anon_vma_chain *anon_vma_chain)
{
	struct anon_vma *anon_vma = anon_vma_chain->anon_vma;
	int empty;

	/* If anon_vma_fork fails, we can get an empty anon_vma_chain. */
	if (!anon_vma)
		return;

	FUNC1(anon_vma);
	FUNC5(&anon_vma_chain->same_anon_vma);

	/* We must garbage collect the anon_vma if it's empty */
	empty = FUNC6(&anon_vma->head) && !FUNC3(anon_vma);
	FUNC2(anon_vma);

	if (empty) {
		/* We no longer need the root anon_vma */
		if (anon_vma->root != anon_vma)
			FUNC4(anon_vma->root);
		FUNC0(anon_vma);
	}
}