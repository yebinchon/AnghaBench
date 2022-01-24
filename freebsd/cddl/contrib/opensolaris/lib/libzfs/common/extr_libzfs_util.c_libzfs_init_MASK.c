#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  libzfs_prop_debug; int /*<<< orphan*/ * libzfs_sharetab; int /*<<< orphan*/ * libzfs_mnttab; int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  MNTTAB ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_EXPORTS_PATH ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

libzfs_handle_t *
FUNC13(void)
{
	libzfs_handle_t *hdl;

	if ((hdl = FUNC0(1, sizeof (libzfs_handle_t))) == NULL) {
		return (NULL);
	}

	if (FUNC7() < 0) {
		FUNC4(hdl);
		return (NULL);
	}

	if ((hdl->libzfs_fd = FUNC9(ZFS_DEV, O_RDWR)) < 0) {
		FUNC4(hdl);
		return (NULL);
	}

	if ((hdl->libzfs_mnttab = FUNC3(MNTTAB, "r")) == NULL) {
		(void) FUNC1(hdl->libzfs_fd);
		FUNC4(hdl);
		return (NULL);
	}

	hdl->libzfs_sharetab = FUNC3(ZFS_EXPORTS_PATH, "r");

	if (FUNC6() != 0) {
		(void) FUNC1(hdl->libzfs_fd);
		(void) FUNC2(hdl->libzfs_mnttab);
		(void) FUNC2(hdl->libzfs_sharetab);
		FUNC4(hdl);
		return (NULL);
	}

	FUNC10();
	FUNC12();
	FUNC11();
	FUNC8(hdl);

	if (FUNC5("ZFS_PROP_DEBUG") != NULL) {
		hdl->libzfs_prop_debug = B_TRUE;
	}

	return (hdl);
}