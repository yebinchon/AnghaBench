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
struct TYPE_2__ {int h_version; int h_length; int /*<<< orphan*/  h_cmd; int /*<<< orphan*/  h_nodeid; int /*<<< orphan*/  h_lockspace; } ;
struct dlm_rcom {int rc_type; int /*<<< orphan*/  rc_seq; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_lock; int /*<<< orphan*/  ls_recover_seq; int /*<<< orphan*/  ls_global_id; } ;

/* Variables and functions */
 int DLM_HEADER_MAJOR ; 
 int DLM_HEADER_MINOR ; 
 int /*<<< orphan*/  DLM_RCOM ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct dlm_mhandle* FUNC0 (int,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dlm_ls *ls, int to_nodeid, int type, int len,
		       struct dlm_rcom **rc_ret, struct dlm_mhandle **mh_ret)
{
	struct dlm_rcom *rc;
	struct dlm_mhandle *mh;
	char *mb;
	int mb_len = sizeof(struct dlm_rcom) + len;

	mh = FUNC0(to_nodeid, mb_len, GFP_NOFS, &mb);
	if (!mh) {
		FUNC2("create_rcom to %d type %d len %d ENOBUFS",
			  to_nodeid, type, len);
		return -ENOBUFS;
	}
	FUNC3(mb, 0, mb_len);

	rc = (struct dlm_rcom *) mb;

	rc->rc_header.h_version = (DLM_HEADER_MAJOR | DLM_HEADER_MINOR);
	rc->rc_header.h_lockspace = ls->ls_global_id;
	rc->rc_header.h_nodeid = FUNC1();
	rc->rc_header.h_length = mb_len;
	rc->rc_header.h_cmd = DLM_RCOM;

	rc->rc_type = type;

	FUNC4(&ls->ls_recover_lock);
	rc->rc_seq = ls->ls_recover_seq;
	FUNC5(&ls->ls_recover_lock);

	*mh_ret = mh;
	*rc_ret = rc;
	return 0;
}