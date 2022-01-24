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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  enum lzc_dataset_type { ____Placeholder_lzc_dataset_type } lzc_dataset_type ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(const char *fsname, enum lzc_dataset_type type, nvlist_t *props)
{
	int error;
	nvlist_t *args = FUNC2();
	FUNC0(args, "type", (dmu_objset_type_t)type);
	if (props != NULL)
		FUNC1(args, "props", props);
	error = FUNC3(ZFS_IOC_CREATE, fsname, args, NULL);
	FUNC4(args);
	return (error);
}