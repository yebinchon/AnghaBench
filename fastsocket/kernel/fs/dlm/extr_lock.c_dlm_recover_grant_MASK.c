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
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int ls_rsbtbl_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSB_RECOVER_GRANT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 struct dlm_rsb* FUNC2 (struct dlm_ls*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 

void FUNC8(struct dlm_ls *ls)
{
	struct dlm_rsb *r;
	int bucket = 0;

	while (1) {
		r = FUNC2(ls, bucket);
		if (!r) {
			if (bucket == ls->ls_rsbtbl_size - 1)
				break;
			bucket++;
			continue;
		}
		FUNC4(r);
		/* the RECOVER_GRANT flag is checked in the grant path */
		FUNC3(r);
		FUNC6(r, RSB_RECOVER_GRANT);
		FUNC1(r, 0);
		FUNC7(r);
		FUNC5(r);
		FUNC0();
	}
}