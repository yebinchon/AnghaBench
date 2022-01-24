#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sc_prop; scalar_t__ sc_reverse; int /*<<< orphan*/  sc_user_prop; struct TYPE_3__* sc_next; } ;
typedef  TYPE_1__ zfs_sort_column_t ;
struct TYPE_4__ {int /*<<< orphan*/ * zn_handle; } ;
typedef  TYPE_2__ zfs_node_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  rbuf ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lbuf ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int ZFS_MAXPROPLEN ; 
 scalar_t__ ZFS_PROP_NAME ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (void const*,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(const void *larg, const void *rarg, void *data)
{
	zfs_handle_t *l = ((zfs_node_t *)larg)->zn_handle;
	zfs_handle_t *r = ((zfs_node_t *)rarg)->zn_handle;
	zfs_sort_column_t *sc = (zfs_sort_column_t *)data;
	zfs_sort_column_t *psc;

	for (psc = sc; psc != NULL; psc = psc->sc_next) {
		char lbuf[ZFS_MAXPROPLEN], rbuf[ZFS_MAXPROPLEN];
		char *lstr, *rstr;
		uint64_t lnum, rnum;
		boolean_t lvalid, rvalid;
		int ret = 0;

		/*
		 * We group the checks below the generic code.  If 'lstr' and
		 * 'rstr' are non-NULL, then we do a string based comparison.
		 * Otherwise, we compare 'lnum' and 'rnum'.
		 */
		lstr = rstr = NULL;
		if (psc->sc_prop == ZPROP_INVAL) {
			nvlist_t *luser, *ruser;
			nvlist_t *lval, *rval;

			luser = FUNC8(l);
			ruser = FUNC8(r);

			lvalid = (FUNC0(luser,
			    psc->sc_user_prop, &lval) == 0);
			rvalid = (FUNC0(ruser,
			    psc->sc_user_prop, &rval) == 0);

			if (lvalid)
				FUNC4(FUNC1(lval,
				    ZPROP_VALUE, &lstr) == 0);
			if (rvalid)
				FUNC4(FUNC1(rval,
				    ZPROP_VALUE, &rstr) == 0);
		} else if (psc->sc_prop == ZFS_PROP_NAME) {
			lvalid = rvalid = B_TRUE;

			(void) FUNC3(lbuf, FUNC6(l), sizeof (lbuf));
			(void) FUNC3(rbuf, FUNC6(r), sizeof (rbuf));

			lstr = lbuf;
			rstr = rbuf;
		} else if (FUNC11(psc->sc_prop)) {
			lvalid = (FUNC9(l, psc->sc_prop, lbuf,
			    sizeof (lbuf), NULL, NULL, 0, B_TRUE) == 0);
			rvalid = (FUNC9(r, psc->sc_prop, rbuf,
			    sizeof (rbuf), NULL, NULL, 0, B_TRUE) == 0);

			lstr = lbuf;
			rstr = rbuf;
		} else {
			lvalid = FUNC12(psc->sc_prop,
			    FUNC7(l));
			rvalid = FUNC12(psc->sc_prop,
			    FUNC7(r));

			if (lvalid)
				(void) FUNC10(l, psc->sc_prop,
				    &lnum, NULL, NULL, 0);
			if (rvalid)
				(void) FUNC10(r, psc->sc_prop,
				    &rnum, NULL, NULL, 0);
		}

		if (!lvalid && !rvalid)
			continue;
		else if (!lvalid)
			return (1);
		else if (!rvalid)
			return (-1);

		if (lstr)
			ret = FUNC2(lstr, rstr);
		else if (lnum < rnum)
			ret = -1;
		else if (lnum > rnum)
			ret = 1;

		if (ret != 0) {
			if (psc->sc_reverse == B_TRUE)
				ret = (ret < 0) ? 1 : -1;
			return (ret);
		}
	}

	return (FUNC5(larg, rarg, NULL));
}