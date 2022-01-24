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
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int,int) ; 
 int FUNC4 (struct dlm_message*) ; 

__attribute__((used)) static void FUNC5(struct dlm_ls *ls, struct dlm_message *ms)
{
	int len, dir_nodeid, from_nodeid;

	from_nodeid = ms->m_header.h_nodeid;

	len = FUNC4(ms);

	dir_nodeid = FUNC1(ls, ms->m_hash);
	if (dir_nodeid != FUNC2()) {
		FUNC3(ls, "remove dir entry dir_nodeid %d from %d",
			  dir_nodeid, from_nodeid);
		return;
	}

	FUNC0(ls, from_nodeid, ms->m_extra, len);
}