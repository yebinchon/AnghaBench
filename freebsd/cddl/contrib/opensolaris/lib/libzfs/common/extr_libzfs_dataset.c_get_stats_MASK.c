#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp)
{
	int rc = 0;
	zfs_cmd_t zc = { 0 };

	if (FUNC2(zhp->zfs_hdl, &zc, 0) != 0)
		return (-1);
	if (FUNC0(zhp, &zc) != 0)
		rc = -1;
	else if (FUNC1(zhp, &zc) != 0)
		rc = -1;
	FUNC3(&zc);
	return (rc);
}