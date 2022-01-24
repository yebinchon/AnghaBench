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
struct oxu_murb {int dummy; } ;
struct oxu_hcd {int* murb_used; int /*<<< orphan*/  mem_lock; struct oxu_murb* murb_pool; } ;

/* Variables and functions */
 int MURB_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct oxu_murb *FUNC2(struct oxu_hcd *oxu)

{
	int i;
	struct oxu_murb *murb = NULL;

	FUNC0(&oxu->mem_lock);

	for (i = 0; i < MURB_NUM; i++)
		if (!oxu->murb_used[i])
			break;

	if (i < MURB_NUM) {
		murb = &(oxu->murb_pool)[i];

		oxu->murb_used[i] = 1;
	}

	FUNC1(&oxu->mem_lock);

	return murb;
}