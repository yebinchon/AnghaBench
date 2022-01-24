#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct holdarg {char const* snapname; char const* tag; int error; int /*<<< orphan*/ * nvl; int /*<<< orphan*/  recursive; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
#define  EINVAL 130 
#define  ENOTSUP 129 
#define  ESRCH 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_REFTAG_RELE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct holdarg*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC15(zfs_handle_t *zhp, const char *snapname, const char *tag,
    boolean_t recursive)
{
	int ret;
	struct holdarg ha;
	nvlist_t *errors = NULL;
	nvpair_t *elem;
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char errbuf[1024];

	ha.nvl = FUNC1();
	ha.snapname = snapname;
	ha.tag = tag;
	ha.recursive = recursive;
	ha.error = 0;
	(void) FUNC12(FUNC11(zhp), &ha);

	if (FUNC5(ha.nvl)) {
		FUNC2(ha.nvl);
		ret = ha.error;
		(void) FUNC8(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN,
		    "cannot release hold from snapshot '%s@%s'"),
		    zhp->zfs_name, snapname);
		if (ret == ESRCH) {
			(void) FUNC9(hdl, EZFS_REFTAG_RELE, errbuf);
		} else {
			(void) FUNC13(hdl, ret, errbuf);
		}
		return (ret);
	}

	ret = FUNC4(ha.nvl, &errors);
	FUNC2(ha.nvl);

	if (ret == 0) {
		/* There may be errors even in the success case. */
		FUNC2(errors);
		return (0);
	}

	if (FUNC5(errors)) {
		/* no hold-specific errors */
		(void) FUNC8(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
		    "cannot release"));
		switch (errno) {
		case ENOTSUP:
			FUNC10(hdl, FUNC0(TEXT_DOMAIN,
			    "pool must be upgraded"));
			(void) FUNC9(hdl, EZFS_BADVERSION, errbuf);
			break;
		default:
			(void) FUNC14(hdl, errno, errbuf);
		}
	}

	for (elem = FUNC6(errors, NULL);
	    elem != NULL;
	    elem = FUNC6(errors, elem)) {
		(void) FUNC8(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN,
		    "cannot release hold from snapshot '%s'"),
		    FUNC7(elem));
		switch (FUNC3(elem)) {
		case ESRCH:
			(void) FUNC9(hdl, EZFS_REFTAG_RELE, errbuf);
			break;
		case EINVAL:
			(void) FUNC9(hdl, EZFS_BADTYPE, errbuf);
			break;
		default:
			(void) FUNC14(hdl,
			    FUNC3(elem), errbuf);
		}
	}

	FUNC2(errors);
	return (ret);
}