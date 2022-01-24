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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ kfree ; 

int FUNC2(struct kref *kref, void (*release)(struct kref *kref))
{
	FUNC0(release == NULL);
	FUNC0(release == (void (*)(struct kref *))kfree);

	if (FUNC1(&kref->refcount)) {
		release(kref);
		return 1;
	}
	return 0;
}