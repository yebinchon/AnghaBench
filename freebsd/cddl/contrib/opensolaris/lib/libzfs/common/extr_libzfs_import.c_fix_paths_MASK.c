#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ ne_guid; char* ne_name; struct TYPE_3__* ne_next; } ;
typedef  TYPE_1__ name_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_DEVID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(nvlist_t *nv, name_entry_t *names)
{
	nvlist_t **child;
	uint_t c, children;
	uint64_t guid;
	name_entry_t *ne, *best;
	char *path, *devid;
	int matched;

	if (FUNC3(nv, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			if (FUNC9(child[c], names) != 0)
				return (-1);
		return (0);
	}

	/*
	 * This is a leaf (file or disk) vdev.  In either case, go through
	 * the name list and see if we find a matching guid.  If so, replace
	 * the path and see if we can calculate a new devid.
	 *
	 * There may be multiple names associated with a particular guid, in
	 * which case we have overlapping slices or multiple paths to the same
	 * disk.  If this is the case, then we want to pick the path that is
	 * the most similar to the original, where "most similar" is the number
	 * of matching characters starting from the end of the path.  This will
	 * preserve slice numbers even if the disks have been reorganized, and
	 * will also catch preferred disk names if multiple paths exist.
	 */
	FUNC8(FUNC5(nv, ZPOOL_CONFIG_GUID, &guid) == 0);
	if (FUNC4(nv, ZPOOL_CONFIG_PATH, &path) != 0)
		path = NULL;

	matched = 0;
	best = NULL;
	for (ne = names; ne != NULL; ne = ne->ne_next) {
		if (ne->ne_guid == guid) {
			const char *src, *dst;
			int count;

			if (path == NULL) {
				best = ne;
				break;
			}

			src = ne->ne_name + FUNC7(ne->ne_name) - 1;
			dst = path + FUNC7(path) - 1;
			for (count = 0; src >= ne->ne_name && dst >= path;
			    src--, dst--, count++)
				if (*src != *dst)
					break;

			/*
			 * At this point, 'count' is the number of characters
			 * matched from the end.
			 */
			if (count > matched || best == NULL) {
				best = ne;
				matched = count;
			}
		}
	}

	if (best == NULL)
		return (0);

	if (FUNC2(nv, ZPOOL_CONFIG_PATH, best->ne_name) != 0)
		return (-1);

	if ((devid = FUNC1(best->ne_name)) == NULL) {
		(void) FUNC6(nv, ZPOOL_CONFIG_DEVID);
	} else {
		if (FUNC2(nv, ZPOOL_CONFIG_DEVID, devid) != 0) {
			FUNC0(devid);
			return (-1);
		}
		FUNC0(devid);
	}

	return (0);
}