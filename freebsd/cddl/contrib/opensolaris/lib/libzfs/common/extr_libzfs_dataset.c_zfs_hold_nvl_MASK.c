#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
#define  E2BIG 131 
#define  EEXIST 130 
#define  EINVAL 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_REFTAG_HOLD ; 
 int /*<<< orphan*/  EZFS_TAGTOOLONG ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC11(zfs_handle_t *zhp, int cleanup_fd, nvlist_t *holds)
{
	int ret;
	nvlist_t *errors;
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char errbuf[1024];
	nvpair_t *elem;

	errors = NULL;
	ret = FUNC3(holds, cleanup_fd, &errors);

	if (ret == 0) {
		/* There may be errors even in the success case. */
		FUNC1(errors);
		return (0);
	}

	if (FUNC4(errors)) {
		/* no hold-specific errors */
		(void) FUNC7(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN, "cannot hold"));
		switch (ret) {
		case ENOTSUP:
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "pool must be upgraded"));
			(void) FUNC8(hdl, EZFS_BADVERSION, errbuf);
			break;
		case EINVAL:
			(void) FUNC8(hdl, EZFS_BADTYPE, errbuf);
			break;
		default:
			(void) FUNC10(hdl, ret, errbuf);
		}
	}

	for (elem = FUNC5(errors, NULL);
	    elem != NULL;
	    elem = FUNC5(errors, elem)) {
		(void) FUNC7(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN,
		    "cannot hold snapshot '%s'"), FUNC6(elem));
		switch (FUNC2(elem)) {
		case E2BIG:
			/*
			 * Temporary tags wind up having the ds object id
			 * prepended. So even if we passed the length check
			 * above, it's still possible for the tag to wind
			 * up being slightly too long.
			 */
			(void) FUNC8(hdl, EZFS_TAGTOOLONG, errbuf);
			break;
		case EINVAL:
			(void) FUNC8(hdl, EZFS_BADTYPE, errbuf);
			break;
		case EEXIST:
			(void) FUNC8(hdl, EZFS_REFTAG_HOLD, errbuf);
			break;
		default:
			(void) FUNC10(hdl,
			    FUNC2(elem), errbuf);
		}
	}

	FUNC1(errors);
	return (ret);
}