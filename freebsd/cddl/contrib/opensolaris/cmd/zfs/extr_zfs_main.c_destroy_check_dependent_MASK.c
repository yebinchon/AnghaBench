#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_2__ {void* cb_dryrun; void* cb_error; void* cb_first; int /*<<< orphan*/ * cb_target; scalar_t__ cb_recurse; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, void *data)
{
	destroy_cbdata_t *cbp = data;
	const char *tname = FUNC5(cbp->cb_target);
	const char *name = FUNC5(zhp);

	if (FUNC3(tname, name, FUNC2(tname)) == 0 &&
	    (name[FUNC2(tname)] == '/' || name[FUNC2(tname)] == '@')) {
		/*
		 * This is a direct descendant, not a clone somewhere else in
		 * the hierarchy.
		 */
		if (cbp->cb_recurse)
			goto out;

		if (cbp->cb_first) {
			(void) FUNC0(stderr, FUNC1("cannot destroy '%s': "
			    "%s has children\n"),
			    FUNC5(cbp->cb_target),
			    FUNC7(FUNC6(cbp->cb_target)));
			(void) FUNC0(stderr, "%s", FUNC1("use '-r' to destroy "
			    "the following datasets:\n"));
			cbp->cb_first = B_FALSE;
			cbp->cb_error = B_TRUE;
		}

		(void) FUNC0(stderr, "%s\n", FUNC5(zhp));
	} else {
		/*
		 * This is a clone.  We only want to report this if the '-r'
		 * wasn't specified, or the target is a snapshot.
		 */
		if (!cbp->cb_recurse &&
		    FUNC6(cbp->cb_target) != ZFS_TYPE_SNAPSHOT)
			goto out;

		if (cbp->cb_first) {
			(void) FUNC0(stderr, FUNC1("cannot destroy '%s': "
			    "%s has dependent clones\n"),
			    FUNC5(cbp->cb_target),
			    FUNC7(FUNC6(cbp->cb_target)));
			(void) FUNC0(stderr, "%s", FUNC1("use '-R' to destroy "
			    "the following datasets:\n"));
			cbp->cb_first = B_FALSE;
			cbp->cb_error = B_TRUE;
			cbp->cb_dryrun = B_TRUE;
		}

		(void) FUNC0(stderr, "%s\n", FUNC5(zhp));
	}

out:
	FUNC4(zhp);
	return (0);
}