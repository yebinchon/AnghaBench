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
struct kset {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kset*) ; 

int FUNC3(struct kset *k)
{
	int err;

	if (!k)
		return -EINVAL;

	FUNC2(k);
	err = FUNC0(&k->kobj);
	if (err)
		return err;
	FUNC1(&k->kobj, KOBJ_ADD);
	return 0;
}