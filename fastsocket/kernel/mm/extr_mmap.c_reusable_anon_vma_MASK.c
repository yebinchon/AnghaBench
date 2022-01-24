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
struct vm_area_struct {int /*<<< orphan*/  anon_vma_chain; int /*<<< orphan*/  anon_vma; } ;
struct anon_vma {int dummy; } ;

/* Variables and functions */
 struct anon_vma* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct anon_vma *FUNC3(struct vm_area_struct *old, struct vm_area_struct *a, struct vm_area_struct *b)
{
	if (FUNC1(a, b)) {
		struct anon_vma *anon_vma = FUNC0(old->anon_vma);

		if (anon_vma && FUNC2(&old->anon_vma_chain))
			return anon_vma;
	}
	return NULL;
}