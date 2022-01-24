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
 int /*<<< orphan*/  ZFS_IOC_RELEASE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(nvlist_t *holds, nvlist_t **errlist)
{
	char pool[ZFS_MAX_DATASET_NAME_LEN];
	nvpair_t *elem;

	/* determine the pool name */
	elem = FUNC1(holds, NULL);
	if (elem == NULL)
		return (0);
	(void) FUNC4(pool, FUNC2(elem), sizeof (pool));
	pool[FUNC3(pool, "/@")] = '\0';

	return (FUNC0(ZFS_IOC_RELEASE, pool, holds, errlist));
}