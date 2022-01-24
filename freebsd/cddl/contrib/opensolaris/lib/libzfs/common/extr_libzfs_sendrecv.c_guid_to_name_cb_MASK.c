#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {scalar_t__ guid; scalar_t__ bookmark_ok; int /*<<< orphan*/  name; int /*<<< orphan*/ * skip; } ;
typedef  TYPE_2__ guid_to_name_data_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  ZFS_PROP_GUID ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zhp, void *arg)
{
	guid_to_name_data_t *gtnd = arg;
	const char *slash;
	int err;

	if (gtnd->skip != NULL &&
	    (slash = FUNC2(zhp->zfs_name, '/')) != NULL &&
	    FUNC0(slash + 1, gtnd->skip) == 0) {
		FUNC3(zhp);
		return (0);
	}

	if (FUNC6(zhp, ZFS_PROP_GUID) == gtnd->guid) {
		(void) FUNC1(gtnd->name, zhp->zfs_name);
		FUNC3(zhp);
		return (EEXIST);
	}

	err = FUNC5(zhp, guid_to_name_cb, gtnd);
	if (err != EEXIST && gtnd->bookmark_ok)
		err = FUNC4(zhp, guid_to_name_cb, gtnd);
	FUNC3(zhp);
	return (err);
}