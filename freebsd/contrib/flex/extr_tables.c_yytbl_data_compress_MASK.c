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
struct yytbl_data {int td_flags; int /*<<< orphan*/  td_data; int /*<<< orphan*/  td_lolen; int /*<<< orphan*/  td_hilen; int /*<<< orphan*/  td_id; } ;
typedef  int flex_int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct yytbl_data*) ; 
 int FUNC8 (struct yytbl_data*) ; 
 int FUNC9 (struct yytbl_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct yytbl_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct yytbl_data*,int,int) ; 

void FUNC12 (struct yytbl_data *tbl)
{
	flex_int32_t i, newsz, total_len;
	struct yytbl_data newtbl;

	FUNC10 (&newtbl, tbl->td_id);
	newtbl.td_hilen = tbl->td_hilen;
	newtbl.td_lolen = tbl->td_lolen;
	newtbl.td_flags = tbl->td_flags;

	newsz = FUNC7 (tbl);


	if (newsz == (int) FUNC2 (tbl->td_flags))
		/* No change in this table needed. */
		return;

	if (newsz > (int) FUNC2 (tbl->td_flags)) {
		FUNC5 (FUNC3("detected negative compression"));
		return;
	}

	total_len = FUNC8 (tbl);
	newtbl.td_data = FUNC4 (total_len, newsz);
	newtbl.td_flags =
		FUNC1 (newtbl.td_flags) | FUNC0 (newsz);

	for (i = 0; i < total_len; i++) {
		flex_int32_t g;

		g = FUNC9 (tbl, i);
		FUNC11 (&newtbl, i, g);
	}


	/* Now copy over the old table */
	FUNC6 (tbl->td_data);
	*tbl = newtbl;
}