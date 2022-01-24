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
struct yytbl_data {int td_flags; int td_lolen; int* td_data; scalar_t__ td_hilen; } ;
typedef  int flex_int32_t ;

/* Variables and functions */
 int YYTD_DATA32 ; 
 int /*<<< orphan*/  YYTD_ID_START_STATE_LIST ; 
 int YYTD_PTRANS ; 
 int* base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int lastsc ; 
 int /*<<< orphan*/  yydmap_buf ; 
 int /*<<< orphan*/  FUNC2 (struct yytbl_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct yytbl_data *FUNC3 (void)
{
	struct yytbl_data *tbl = 0;
	flex_int32_t *tdata = 0;
	flex_int32_t i;

	tbl = (struct yytbl_data *) FUNC1 (1, sizeof (struct yytbl_data));
	FUNC2 (tbl, YYTD_ID_START_STATE_LIST);
	tbl->td_flags = YYTD_DATA32 | YYTD_PTRANS;
	tbl->td_hilen = 0;
	tbl->td_lolen = lastsc * 2 + 1;

	tbl->td_data = tdata =
		(flex_int32_t *) FUNC1 (tbl->td_lolen, sizeof (flex_int32_t));

	for (i = 0; i <= lastsc * 2; ++i)
		tdata[i] = base[i];

	FUNC0 (&yydmap_buf,
		    "\t{YYTD_ID_START_STATE_LIST, (void**)&yy_start_state_list, sizeof(%s)},\n",
		    "struct yy_trans_info*");

	return tbl;
}