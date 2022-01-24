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
typedef  int /*<<< orphan*/  pool ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_HOLD ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC9(nvlist_t *holds, int cleanup_fd, nvlist_t **errlist)
{
	char pool[ZFS_MAX_DATASET_NAME_LEN];
	nvlist_t *args;
	nvpair_t *elem;
	int error;

	/* determine the pool name */
	elem = FUNC5(holds, NULL);
	if (elem == NULL)
		return (0);
	(void) FUNC8(pool, FUNC6(elem), sizeof (pool));
	pool[FUNC7(pool, "/@")] = '\0';

	args = FUNC2();
	FUNC1(args, "holds", holds);
	if (cleanup_fd != -1)
		FUNC0(args, "cleanup_fd", cleanup_fd);

	error = FUNC3(ZFS_IOC_HOLD, pool, args, errlist);
	FUNC4(args);
	return (error);
}