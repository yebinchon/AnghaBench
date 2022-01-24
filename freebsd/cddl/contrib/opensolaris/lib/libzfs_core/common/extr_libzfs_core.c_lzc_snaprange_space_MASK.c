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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fs ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ZFS_IOC_SPACE_SNAPS ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

int
FUNC8(const char *firstsnap, const char *lastsnap,
    uint64_t *usedp)
{
	nvlist_t *args;
	nvlist_t *result;
	int err;
	char fs[ZFS_MAX_DATASET_NAME_LEN];
	char *atp;

	/* determine the fs name */
	(void) FUNC7(fs, firstsnap, sizeof (fs));
	atp = FUNC6(fs, '@');
	if (atp == NULL)
		return (EINVAL);
	*atp = '\0';

	args = FUNC1();
	FUNC0(args, "firstsnap", firstsnap);

	err = FUNC4(ZFS_IOC_SPACE_SNAPS, lastsnap, args, &result);
	FUNC5(args);
	if (err == 0)
		*usedp = FUNC3(result, "used");
	FUNC2(result);

	return (err);
}