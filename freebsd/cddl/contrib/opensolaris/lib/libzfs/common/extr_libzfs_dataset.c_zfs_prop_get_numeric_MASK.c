#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zfs_prop_t ;
struct TYPE_5__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_type; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_PROPTYPE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(zfs_handle_t *zhp, zfs_prop_t prop, uint64_t *value,
    zprop_source_t *src, char *statbuf, size_t statlen)
{
	char *source;

	/*
	 * Check to see if this property applies to our object
	 */
	if (!FUNC5(prop, zhp->zfs_type)) {
		return (FUNC3(zhp->zfs_hdl, EZFS_PROPTYPE,
		    FUNC0(TEXT_DOMAIN, "cannot get property '%s'"),
		    FUNC4(prop)));
	}

	if (src)
		*src = ZPROP_SRC_NONE;

	if (FUNC1(zhp, prop, src, &source, value) != 0)
		return (-1);

	FUNC2(zhp, src, source, statbuf, statlen);

	return (0);
}