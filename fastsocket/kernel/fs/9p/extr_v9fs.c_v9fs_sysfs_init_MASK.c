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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  fs_kobj ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v9fs_attr_group ; 
 int /*<<< orphan*/  v9fs_kobj ; 

__attribute__((used)) static int FUNC3(void)
{
	v9fs_kobj = FUNC0("9p", fs_kobj);
	if (!v9fs_kobj)
		return -ENOMEM;

	if (FUNC2(v9fs_kobj, &v9fs_attr_group)) {
		FUNC1(v9fs_kobj);
		return -ENOMEM;
	}

	return 0;
}