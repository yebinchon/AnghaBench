#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pl_prop; char* pl_width; struct TYPE_4__* pl_next; int /*<<< orphan*/  pl_user_prop; } ;
typedef  TYPE_1__ zprop_list_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  property ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {scalar_t__ cb_scripted; int /*<<< orphan*/  cb_literal; TYPE_1__* cb_proplist; } ;
typedef  TYPE_2__ list_cbdata_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int ZFS_MAXPROPLEN ; 
 scalar_t__ ZFS_PROP_NAME ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(zfs_handle_t *zhp, list_cbdata_t *cb)
{
	zprop_list_t *pl = cb->cb_proplist;
	boolean_t first = B_TRUE;
	char property[ZFS_MAXPROPLEN];
	nvlist_t *userprops = FUNC6(zhp);
	nvlist_t *propval;
	char *propstr;
	boolean_t right_justify;

	for (; pl != NULL; pl = pl->pl_next) {
		if (!first) {
			if (cb->cb_scripted)
				(void) FUNC2("\t");
			else
				(void) FUNC2("  ");
		} else {
			first = B_FALSE;
		}

		if (pl->pl_prop == ZFS_PROP_NAME) {
			(void) FUNC3(property, FUNC5(zhp),
			    sizeof (property));
			propstr = property;
			right_justify = FUNC7(pl->pl_prop);
		} else if (pl->pl_prop != ZPROP_INVAL) {
			if (FUNC8(zhp, pl->pl_prop, property,
			    sizeof (property), NULL, NULL, 0,
			    cb->cb_literal) != 0)
				propstr = "-";
			else
				propstr = property;
			right_justify = FUNC7(pl->pl_prop);
		} else if (FUNC11(pl->pl_user_prop)) {
			if (FUNC9(zhp, pl->pl_user_prop,
			    property, sizeof (property), cb->cb_literal) != 0)
				propstr = "-";
			else
				propstr = property;
			right_justify = B_TRUE;
		} else if (FUNC12(pl->pl_user_prop)) {
			if (FUNC10(zhp, pl->pl_user_prop,
			    property, sizeof (property), cb->cb_literal) != 0)
				propstr = "-";
			else
				propstr = property;
			right_justify = B_TRUE;
		} else {
			if (FUNC0(userprops,
			    pl->pl_user_prop, &propval) != 0)
				propstr = "-";
			else
				FUNC4(FUNC1(propval,
				    ZPROP_VALUE, &propstr) == 0);
			right_justify = B_FALSE;
		}

		/*
		 * If this is being called in scripted mode, or if this is the
		 * last column and it is left-justified, don't include a width
		 * format specifier.
		 */
		if (cb->cb_scripted || (pl->pl_next == NULL && !right_justify))
			(void) FUNC2("%s", propstr);
		else if (right_justify)
			(void) FUNC2("%*s", pl->pl_width, propstr);
		else
			(void) FUNC2("%-*s", pl->pl_width, propstr);
	}

	(void) FUNC2("\n");
}