#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  origin ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_6__ {char* ds; void* tosnap; void* fromsnap; int /*<<< orphan*/  isclone; int /*<<< orphan*/  errbuf; TYPE_1__* zhp; } ;
typedef  TYPE_2__ differ_info_t ;
struct TYPE_5__ {int /*<<< orphan*/ * zfs_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ORIGIN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(differ_info_t *di, const char *fromsnap,
    const char *tosnap)
{
	libzfs_handle_t *hdl = di->zhp->zfs_hdl;
	char *atptrf = NULL;
	char *atptrt = NULL;
	int fdslen, fsnlen;
	int tdslen, tsnlen;

	/*
	 * Can accept
	 *    dataset@snap1
	 *    dataset@snap1 dataset@snap2
	 *    dataset@snap1 @snap2
	 *    dataset@snap1 dataset
	 *    @snap1 dataset@snap2
	 */
	if (tosnap == NULL) {
		/* only a from snapshot given, must be valid */
		(void) FUNC3(di->errbuf, sizeof (di->errbuf),
		    FUNC1(TEXT_DOMAIN,
		    "Badly formed snapshot name %s"), fromsnap);

		if (!FUNC15(hdl, fromsnap, ZFS_TYPE_SNAPSHOT,
		    B_FALSE)) {
			return (FUNC11(hdl, EZFS_INVALIDNAME,
			    di->errbuf));
		}

		atptrf = FUNC4(fromsnap, '@');
		FUNC0(atptrf != NULL);
		fdslen = atptrf - fromsnap;

		di->fromsnap = FUNC14(hdl, fromsnap);
		di->ds = FUNC14(hdl, fromsnap);
		di->ds[fdslen] = '\0';

		/* the to snap will be a just-in-time snap of the head */
		return (FUNC2(di));
	}

	(void) FUNC3(di->errbuf, sizeof (di->errbuf),
	    FUNC1(TEXT_DOMAIN,
	    "Unable to determine which snapshots to compare"));

	atptrf = FUNC4(fromsnap, '@');
	atptrt = FUNC4(tosnap, '@');
	fdslen = atptrf ? atptrf - fromsnap : FUNC5(fromsnap);
	tdslen = atptrt ? atptrt - tosnap : FUNC5(tosnap);
	fsnlen = FUNC5(fromsnap) - fdslen;	/* includes @ sign */
	tsnlen = FUNC5(tosnap) - tdslen;	/* includes @ sign */

	if (fsnlen <= 1 || tsnlen == 1 || (fdslen == 0 && tdslen == 0) ||
	    (fsnlen == 0 && tsnlen == 0)) {
		return (FUNC11(hdl, EZFS_INVALIDNAME, di->errbuf));
	} else if ((fdslen > 0 && tdslen > 0) &&
	    ((tdslen != fdslen || FUNC6(fromsnap, tosnap, fdslen) != 0))) {
		/*
		 * not the same dataset name, might be okay if
		 * tosnap is a clone of a fromsnap descendant.
		 */
		char origin[ZFS_MAX_DATASET_NAME_LEN];
		zprop_source_t src;
		zfs_handle_t *zhp;

		di->ds = FUNC8(di->zhp->zfs_hdl, tdslen + 1);
		(void) FUNC7(di->ds, tosnap, tdslen);
		di->ds[tdslen] = '\0';

		zhp = FUNC12(hdl, di->ds, ZFS_TYPE_FILESYSTEM);
		while (zhp != NULL) {
			if (FUNC13(zhp, ZFS_PROP_ORIGIN, origin,
			    sizeof (origin), &src, NULL, 0, B_FALSE) != 0) {
				(void) FUNC10(zhp);
				zhp = NULL;
				break;
			}
			if (FUNC6(origin, fromsnap, fsnlen) == 0)
				break;

			(void) FUNC10(zhp);
			zhp = FUNC12(hdl, origin, ZFS_TYPE_FILESYSTEM);
		}

		if (zhp == NULL) {
			(void) FUNC3(di->errbuf, sizeof (di->errbuf),
			    FUNC1(TEXT_DOMAIN,
			    "Not an earlier snapshot from the same fs"));
			return (FUNC11(hdl, EZFS_INVALIDNAME, di->errbuf));
		} else {
			(void) FUNC10(zhp);
		}

		di->isclone = B_TRUE;
		di->fromsnap = FUNC14(hdl, fromsnap);
		if (tsnlen) {
			di->tosnap = FUNC14(hdl, tosnap);
		} else {
			return (FUNC2(di));
		}
	} else {
		int dslen = fdslen ? fdslen : tdslen;

		di->ds = FUNC8(hdl, dslen + 1);
		(void) FUNC7(di->ds, fdslen ? fromsnap : tosnap, dslen);
		di->ds[dslen] = '\0';

		di->fromsnap = FUNC9(hdl, "%s%s", di->ds, atptrf);
		if (tsnlen) {
			di->tosnap = FUNC9(hdl, "%s%s", di->ds, atptrt);
		} else {
			return (FUNC2(di));
		}
	}
	return (0);
}