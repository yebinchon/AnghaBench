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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  ZPOOL_ERR_DATASET ; 
 int /*<<< orphan*/  ZPOOL_ERR_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void
FUNC10(zpool_handle_t *zhp)
{
	nvlist_t *nverrlist = NULL;
	nvpair_t *elem;
	char *pathname;
	size_t len = MAXPATHLEN * 2;

	if (FUNC8(zhp, &nverrlist) != 0) {
		(void) FUNC5("errors: List of errors unavailable "
		    "(insufficient privileges)\n");
		return;
	}

	(void) FUNC5("errors: Permanent errors have been "
	    "detected in the following files:\n\n");

	pathname = FUNC6(len);
	elem = NULL;
	while ((elem = FUNC3(nverrlist, elem)) != NULL) {
		nvlist_t *nv;
		uint64_t dsobj, obj;

		FUNC7(FUNC4(elem, &nv) == 0);
		FUNC7(FUNC2(nv, ZPOOL_ERR_DATASET,
		    &dsobj) == 0);
		FUNC7(FUNC2(nv, ZPOOL_ERR_OBJECT,
		    &obj) == 0);
		FUNC9(zhp, dsobj, obj, pathname, len);
		(void) FUNC5("%7s %s\n", "", pathname);
	}
	FUNC0(pathname);
	FUNC1(nverrlist);
}