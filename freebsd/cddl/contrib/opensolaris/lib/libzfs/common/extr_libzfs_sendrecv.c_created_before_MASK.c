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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(libzfs_handle_t *hdl, avl_tree_t *avl,
    uint64_t guid1, uint64_t guid2)
{
	nvlist_t *nvfs;
	char *fsname, *snapname;
	char buf[ZFS_MAX_DATASET_NAME_LEN];
	int rv;
	zfs_handle_t *guid1hdl, *guid2hdl;
	uint64_t create1, create2;

	if (guid2 == 0)
		return (0);
	if (guid1 == 0)
		return (1);

	nvfs = FUNC1(avl, guid1, &snapname);
	FUNC0(0 == FUNC2(nvfs, "name", &fsname));
	(void) FUNC3(buf, sizeof (buf), "%s@%s", fsname, snapname);
	guid1hdl = FUNC5(hdl, buf, ZFS_TYPE_SNAPSHOT);
	if (guid1hdl == NULL)
		return (-1);

	nvfs = FUNC1(avl, guid2, &snapname);
	FUNC0(0 == FUNC2(nvfs, "name", &fsname));
	(void) FUNC3(buf, sizeof (buf), "%s@%s", fsname, snapname);
	guid2hdl = FUNC5(hdl, buf, ZFS_TYPE_SNAPSHOT);
	if (guid2hdl == NULL) {
		FUNC4(guid1hdl);
		return (-1);
	}

	create1 = FUNC6(guid1hdl, ZFS_PROP_CREATETXG);
	create2 = FUNC6(guid2hdl, ZFS_PROP_CREATETXG);

	if (create1 < create2)
		rv = -1;
	else if (create1 > create2)
		rv = +1;
	else
		rv = 0;

	FUNC4(guid1hdl);
	FUNC4(guid2hdl);

	return (rv);
}