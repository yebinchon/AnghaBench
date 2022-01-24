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
struct yytbl_data {int td_lolen; int /*<<< orphan*/ * td_data; scalar_t__ td_hilen; int /*<<< orphan*/  td_flags; } ;
typedef  int /*<<< orphan*/  flex_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YYTD_DATA32 ; 
 int /*<<< orphan*/  YYTD_ID_EC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int csize ; 
 int /*<<< orphan*/ * ecgroup ; 
 int /*<<< orphan*/  yydmap_buf ; 
 int /*<<< orphan*/  FUNC3 (struct yytbl_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct yytbl_data *FUNC4 (void)
{
	int i;
	struct yytbl_data *tbl = 0;
	flex_int32_t *tdata = 0;

	tbl = (struct yytbl_data *) FUNC2 (1, sizeof (struct yytbl_data));
	FUNC3 (tbl, YYTD_ID_EC);
	tbl->td_flags |= YYTD_DATA32;
	tbl->td_hilen = 0;
	tbl->td_lolen = csize;

	tbl->td_data = tdata =
		(flex_int32_t *) FUNC2 (tbl->td_lolen, sizeof (flex_int32_t));

	for (i = 1; i < csize; ++i) {
		ecgroup[i] = FUNC0 (ecgroup[i]);
		tdata[i] = ecgroup[i];
	}

	FUNC1 (&yydmap_buf,
		    "\t{YYTD_ID_EC, (void**)&yy_ec, sizeof(%s)},\n",
		    "flex_int32_t");

	return tbl;
}