#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ libzfs_sharetab; scalar_t__ libzfs_mnttab; int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(libzfs_handle_t *hdl)
{
	(void) FUNC0(hdl->libzfs_fd);
	if (hdl->libzfs_mnttab)
		(void) FUNC1(hdl->libzfs_mnttab);
	if (hdl->libzfs_sharetab)
		(void) FUNC1(hdl->libzfs_sharetab);
	FUNC7(hdl);
	FUNC8(hdl);
#ifdef illumos
	libzfs_fru_clear(hdl, B_TRUE);
#endif
	FUNC6(hdl);
	FUNC5(hdl);
	FUNC3();
	FUNC2(hdl);
}