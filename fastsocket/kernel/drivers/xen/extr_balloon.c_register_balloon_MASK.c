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
struct sys_device {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * cls; scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * balloon_attrs ; 
 int /*<<< orphan*/  balloon_info_group ; 
 int /*<<< orphan*/  balloon_sysdev_class ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sys_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sys_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sys_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sys_device*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sys_device *sysdev)
{
	int i, error;

	error = FUNC1(&balloon_sysdev_class);
	if (error)
		return error;

	sysdev->id = 0;
	sysdev->cls = &balloon_sysdev_class;

	error = FUNC4(sysdev);
	if (error) {
		FUNC2(&balloon_sysdev_class);
		return error;
	}

	for (i = 0; i < FUNC0(balloon_attrs); i++) {
		error = FUNC3(sysdev, balloon_attrs[i]);
		if (error)
			goto fail;
	}

	error = FUNC7(&sysdev->kobj, &balloon_info_group);
	if (error)
		goto fail;

	return 0;

 fail:
	while (--i >= 0)
		FUNC5(sysdev, balloon_attrs[i]);
	FUNC6(sysdev);
	FUNC2(&balloon_sysdev_class);
	return error;
}