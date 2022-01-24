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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
#define  EEXIST 128 
 int /*<<< orphan*/  EZFS_EXISTS ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC11(libzfs_handle_t *hdl, nvlist_t *snaps, boolean_t defer)
{
	int ret;
	nvlist_t *errlist = NULL;

	ret = FUNC2(snaps, defer, &errlist);

	if (ret == 0) {
		FUNC4(errlist);
		return (0);
	}

	if (FUNC3(errlist)) {
		char errbuf[1024];
		(void) FUNC7(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN, "cannot destroy snapshots"));

		ret = FUNC10(hdl, ret, errbuf);
	}
	for (nvpair_t *pair = FUNC5(errlist, NULL);
	    pair != NULL; pair = FUNC5(errlist, pair)) {
		char errbuf[1024];
		(void) FUNC7(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN, "cannot destroy snapshot %s"),
		    FUNC6(pair));

		switch (FUNC1(pair)) {
		case EEXIST:
			FUNC9(hdl,
			    FUNC0(TEXT_DOMAIN, "snapshot is cloned"));
			ret = FUNC8(hdl, EZFS_EXISTS, errbuf);
			break;
		default:
			ret = FUNC10(hdl, errno, errbuf);
			break;
		}
	}

	FUNC4(errlist);
	return (ret);
}