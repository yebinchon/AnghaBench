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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*) ; 

int
FUNC8(zpool_handle_t *zhp, void *data)
{
	int ret;
	libzfs_handle_t *hdl = FUNC5(zhp);
	const char *pool_name = FUNC6(zhp);
	boolean_t *force = data;
	nvlist_t *innvl = FUNC2();

	FUNC1(innvl, "force", *force);
	if ((ret = FUNC3(pool_name, innvl, NULL)) != 0) {
		FUNC4(innvl);
		return (FUNC7(hdl, ret,
		    FUNC0(TEXT_DOMAIN, "sync '%s' failed"), pool_name));
	}
	FUNC4(innvl);

	return (0);
}