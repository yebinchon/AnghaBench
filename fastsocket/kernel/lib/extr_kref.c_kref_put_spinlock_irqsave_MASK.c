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
struct kref {int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct kref *kref,
		void (*release)(struct kref *kref),
		spinlock_t *lock)
{
	unsigned long flags;

	FUNC0(release == NULL);
	if (FUNC1(&kref->refcount, -1, 1))
		return 0;
	FUNC4(lock, flags);
	if (FUNC2(&kref->refcount)) {
		release(kref);
		FUNC3(flags);
		return 1;
	}
	FUNC5(lock, flags);
	return 0;
}