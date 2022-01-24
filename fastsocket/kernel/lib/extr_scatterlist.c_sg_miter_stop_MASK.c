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
struct sg_mapping_iter {scalar_t__ consumed; scalar_t__ length; int __flags; int /*<<< orphan*/ * addr; int /*<<< orphan*/ * page; int /*<<< orphan*/  __offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct sg_mapping_iter *miter)
{
	FUNC0(miter->consumed > miter->length);

	/* drop resources from the last iteration */
	if (miter->addr) {
		miter->__offset += miter->consumed;

		if (miter->__flags & SG_MITER_TO_SG)
			FUNC1(miter->page);

		if (miter->__flags & SG_MITER_ATOMIC) {
			FUNC0(!FUNC2());
			FUNC4(miter->addr, KM_BIO_SRC_IRQ);
		} else
			FUNC3(miter->page);

		miter->page = NULL;
		miter->addr = NULL;
		miter->length = 0;
		miter->consumed = 0;
	}
}