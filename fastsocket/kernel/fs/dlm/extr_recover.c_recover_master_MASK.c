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
struct dlm_rsb {int /*<<< orphan*/  res_length; int /*<<< orphan*/  res_name; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_ls*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct dlm_rsb*) ; 
 int FUNC2 () ; 
 int FUNC3 (struct dlm_rsb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,int) ; 

__attribute__((used)) static int FUNC7(struct dlm_rsb *r)
{
	struct dlm_ls *ls = r->res_ls;
	int error, dir_nodeid, ret_nodeid, our_nodeid = FUNC2();

	dir_nodeid = FUNC1(r);

	if (dir_nodeid == our_nodeid) {
		error = FUNC0(ls, our_nodeid, r->res_name,
				       r->res_length, &ret_nodeid);
		if (error)
			FUNC4(ls, "recover dir lookup error %d", error);

		if (ret_nodeid == our_nodeid)
			ret_nodeid = 0;
		FUNC6(r, ret_nodeid);
	} else {
		FUNC5(r);
		error = FUNC3(r, dir_nodeid);
	}

	return error;
}