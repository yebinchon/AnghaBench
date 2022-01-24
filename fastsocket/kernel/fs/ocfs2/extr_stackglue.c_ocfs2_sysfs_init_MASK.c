#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  fs_kobj ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ocfs2_attr_group ; 
 TYPE_1__* ocfs2_kset ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ocfs2_kset = FUNC0("ocfs2", NULL, fs_kobj);
	if (!ocfs2_kset)
		return -ENOMEM;

	ret = FUNC2(&ocfs2_kset->kobj, &ocfs2_attr_group);
	if (ret)
		goto error;

	return 0;

error:
	FUNC1(ocfs2_kset);
	return ret;
}