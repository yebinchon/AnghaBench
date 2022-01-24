#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_8__ {char* zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_PROP_CREATION ; 
 int /*<<< orphan*/  ZFS_PROP_GUID ; 
 int ZFS_TYPE_BOOKMARK ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
	zfs_handle_t *nzhp;
	nvlist_t *props = NULL;
	nvlist_t *bmarks = NULL;
	int err;

	if ((FUNC9(zhp) & (ZFS_TYPE_SNAPSHOT | ZFS_TYPE_BOOKMARK)) != 0)
		return (0);

	/* Setup the requested properties nvlist. */
	props = FUNC1();
	FUNC0(props, FUNC10(ZFS_PROP_GUID));
	FUNC0(props, FUNC10(ZFS_PROP_CREATETXG));
	FUNC0(props, FUNC10(ZFS_PROP_CREATION));

	if ((err = FUNC4(zhp->zfs_name, props, &bmarks)) != 0)
		goto out;

	for (nvpair_t *pair = FUNC6(bmarks, NULL);
	    pair != NULL; pair = FUNC6(bmarks, pair)) {
		char name[ZFS_MAX_DATASET_NAME_LEN];
		char *bmark_name;
		nvlist_t *bmark_props;

		bmark_name = FUNC7(pair);
		bmark_props = FUNC3(pair);

		(void) FUNC8(name, sizeof (name), "%s#%s", zhp->zfs_name,
		    bmark_name);

		nzhp = FUNC5(zhp, name, bmark_props);
		if (nzhp == NULL)
			continue;

		if ((err = func(nzhp, data)) != 0)
			goto out;
	}

out:
	FUNC2(props);
	FUNC2(bmarks);

	return (err);
}