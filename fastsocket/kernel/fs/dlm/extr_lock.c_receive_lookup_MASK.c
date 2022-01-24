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
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int /*<<< orphan*/  m_extra; int /*<<< orphan*/  m_hash; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dlm_ls*,int,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int,int) ; 
 int FUNC4 (struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,struct dlm_message*,int,int) ; 

__attribute__((used)) static void FUNC7(struct dlm_ls *ls, struct dlm_message *ms)
{
	int len, error, ret_nodeid, dir_nodeid, from_nodeid, our_nodeid;

	from_nodeid = ms->m_header.h_nodeid;
	our_nodeid = FUNC2();

	len = FUNC4(ms);

	dir_nodeid = FUNC1(ls, ms->m_hash);
	if (dir_nodeid != our_nodeid) {
		FUNC3(ls, "lookup dir_nodeid %d from %d",
			  dir_nodeid, from_nodeid);
		error = -EINVAL;
		ret_nodeid = -1;
		goto out;
	}

	error = FUNC0(ls, from_nodeid, ms->m_extra, len, &ret_nodeid);

	/* Optimization: we're master so treat lookup as a request */
	if (!error && ret_nodeid == our_nodeid) {
		FUNC5(ls, ms);
		return;
	}
 out:
	FUNC6(ls, ms, ret_nodeid, error);
}