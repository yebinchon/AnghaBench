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
typedef  int /*<<< orphan*/  zprop_source_t ;
struct TYPE_4__ {scalar_t__ pl_prop; int /*<<< orphan*/  pl_user_prop; struct TYPE_4__* pl_next; } ;
typedef  TYPE_1__ zprop_list_t ;
struct TYPE_5__ {int /*<<< orphan*/  cb_literal; TYPE_1__* cb_proplist; } ;
typedef  TYPE_2__ zprop_get_cbdata_t ;
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  value ;

/* Variables and functions */
 int MAXNAMELEN ; 
 scalar_t__ ZPOOL_PROP_NAME ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(zpool_handle_t *zhp, void *data)
{
	zprop_get_cbdata_t *cbp = (zprop_get_cbdata_t *)data;
	char value[MAXNAMELEN];
	zprop_source_t srctype;
	zprop_list_t *pl;

	for (pl = cbp->cb_proplist; pl != NULL; pl = pl->pl_next) {

		/*
		 * Skip the special fake placeholder. This will also skip
		 * over the name property when 'all' is specified.
		 */
		if (pl->pl_prop == ZPOOL_PROP_NAME &&
		    pl == cbp->cb_proplist)
			continue;

		if (pl->pl_prop == ZPROP_INVAL &&
		    (FUNC2(pl->pl_user_prop) ||
		    FUNC5(pl->pl_user_prop))) {
			srctype = ZPROP_SRC_LOCAL;

			if (FUNC3(zhp, pl->pl_user_prop,
			    value, sizeof (value)) == 0) {
				FUNC6(FUNC0(zhp),
				    cbp, pl->pl_user_prop, value, srctype,
				    NULL, NULL);
			}
		} else {
			if (FUNC1(zhp, pl->pl_prop, value,
			    sizeof (value), &srctype, cbp->cb_literal) != 0)
				continue;

			FUNC6(FUNC0(zhp), cbp,
			    FUNC4(pl->pl_prop), value, srctype,
			    NULL, NULL);
		}
	}
	return (0);
}