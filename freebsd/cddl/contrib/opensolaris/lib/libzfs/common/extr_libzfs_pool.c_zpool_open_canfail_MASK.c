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
struct TYPE_6__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__*) ; 

zpool_handle_t *
FUNC8(libzfs_handle_t *hdl, const char *pool)
{
	zpool_handle_t *zhp;
	boolean_t missing;

	/*
	 * Make sure the pool name is valid.
	 */
	if (!FUNC6(hdl, B_TRUE, pool)) {
		(void) FUNC4(hdl, EZFS_INVALIDNAME,
		    FUNC0(TEXT_DOMAIN, "cannot open '%s'"),
		    pool);
		return (NULL);
	}

	if ((zhp = FUNC2(hdl, sizeof (zpool_handle_t))) == NULL)
		return (NULL);

	zhp->zpool_hdl = hdl;
	(void) FUNC1(zhp->zpool_name, pool, sizeof (zhp->zpool_name));

	if (FUNC7(zhp, &missing) != 0) {
		FUNC5(zhp);
		return (NULL);
	}

	if (missing) {
		FUNC3(hdl, FUNC0(TEXT_DOMAIN, "no such pool"));
		(void) FUNC4(hdl, EZFS_NOENT,
		    FUNC0(TEXT_DOMAIN, "cannot open '%s'"), pool);
		FUNC5(zhp);
		return (NULL);
	}

	return (zhp);
}