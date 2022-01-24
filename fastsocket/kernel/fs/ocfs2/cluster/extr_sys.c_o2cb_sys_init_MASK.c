#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  fs_kobj ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  o2cb_attr_group ; 
 TYPE_1__* o2cb_kset ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC5(void)
{
	int ret;

	o2cb_kset = FUNC0("o2cb", NULL, fs_kobj);
	if (!o2cb_kset)
		return -ENOMEM;

	/*
	 * Create this symlink for backwards compatibility with old
	 * versions of ocfs2-tools which look for things in /sys/o2cb.
	 */
	ret = FUNC4(NULL, &o2cb_kset->kobj, "o2cb");
	if (ret)
		goto error;

	ret = FUNC3(&o2cb_kset->kobj, &o2cb_attr_group);
	if (ret)
		goto error;

	ret = FUNC2(o2cb_kset);
	if (ret)
		goto error;
	return 0;
error:
	FUNC1(o2cb_kset);
	return ret;
}