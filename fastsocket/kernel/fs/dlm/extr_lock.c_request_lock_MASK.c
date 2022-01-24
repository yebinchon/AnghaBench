#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_id; TYPE_1__* lkb_lksb; } ;
struct dlm_args {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_lkid; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_CREATE ; 
 int FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int FUNC2 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int FUNC6 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 

__attribute__((used)) static int FUNC7(struct dlm_ls *ls, struct dlm_lkb *lkb, char *name,
			int len, struct dlm_args *args)
{
	struct dlm_rsb *r;
	int error;

	error = FUNC6(ls, lkb, args);
	if (error)
		goto out;

	error = FUNC2(ls, name, len, R_CREATE, &r);
	if (error)
		goto out;

	FUNC3(r);

	FUNC1(r, lkb);
	lkb->lkb_lksb->sb_lkid = lkb->lkb_id;

	error = FUNC0(r, lkb);

	FUNC5(r);
	FUNC4(r);

 out:
	return error;
}