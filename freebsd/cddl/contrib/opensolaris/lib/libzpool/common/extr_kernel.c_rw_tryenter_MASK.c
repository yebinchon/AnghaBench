#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ initialized; void* rw_owner; int rw_count; int /*<<< orphan*/  rw_lock; } ;
typedef  TYPE_1__ krwlock_t ;
typedef  scalar_t__ krw_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ RW_READER ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 void* curthread ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(krwlock_t *rwlp, krw_t rw)
{
	int rv;

	FUNC0(rwlp->initialized == B_TRUE);
	FUNC0(rwlp->rw_owner != (void *)-1UL);
	FUNC0(rwlp->rw_owner != curthread);

	if (rw == RW_READER)
		rv = FUNC2(&rwlp->rw_lock);
	else
		rv = FUNC3(&rwlp->rw_lock);

	if (rv == 0) {
		FUNC0(rwlp->rw_owner == NULL);
		if (rw == RW_READER) {
			FUNC0(rwlp->rw_count >= 0);
			FUNC1(&rwlp->rw_count, 1);
		} else {
			FUNC0(rwlp->rw_count == 0);
			rwlp->rw_count = -1;
			rwlp->rw_owner = curthread;
		}
		return (1);
	}

	return (0);
}