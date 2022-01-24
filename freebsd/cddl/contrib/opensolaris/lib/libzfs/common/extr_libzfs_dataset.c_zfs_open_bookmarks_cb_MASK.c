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
struct zfs_open_bookmarks_cb_data {int /*<<< orphan*/ * zhp; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfs_handle_t *zhp, void *data)
{
	struct zfs_open_bookmarks_cb_data *dp = data;

	/*
	 * Is it the one we are looking for?
	 */
	if (FUNC0(dp->path, FUNC2(zhp)) == 0) {
		/*
		 * We found it.  Save it and let the caller know we are done.
		 */
		dp->zhp = zhp;
		return (EEXIST);
	}

	/*
	 * Not found.  Close the handle and ask for another one.
	 */
	FUNC1(zhp);
	return (0);
}