#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rc_type; } ;
struct TYPE_8__ {int m_type; } ;
struct dlm_header {int h_cmd; int h_nodeid; int /*<<< orphan*/  h_lockspace; } ;
union dlm_packet {TYPE_1__ rcom; TYPE_3__ message; struct dlm_header header; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recv_active; } ;
struct TYPE_9__ {scalar_t__ ci_log_debug; } ;

/* Variables and functions */
#define  DLM_MSG 129 
#define  DLM_RCOM 128 
 int DLM_RCOM_STATUS ; 
 TYPE_6__ dlm_config ; 
 struct dlm_ls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(union dlm_packet *p, int nodeid)
{
	struct dlm_header *hd = &p->header;
	struct dlm_ls *ls;
	int type = 0;

	switch (hd->h_cmd) {
	case DLM_MSG:
		FUNC1(&p->message);
		type = p->message.m_type;
		break;
	case DLM_RCOM:
		FUNC3(&p->rcom);
		type = p->rcom.rc_type;
		break;
	default:
		FUNC8("invalid h_cmd %d from %u", hd->h_cmd, nodeid);
		return;
	}

	if (hd->h_nodeid != nodeid) {
		FUNC8("invalid h_nodeid %d from %d lockspace %x",
			  hd->h_nodeid, nodeid, hd->h_lockspace);
		return;
	}

	ls = FUNC0(hd->h_lockspace);
	if (!ls) {
		if (dlm_config.ci_log_debug)
			FUNC8("invalid lockspace %x from %d cmd %d type %d",
				  hd->h_lockspace, nodeid, hd->h_cmd, type);

		if (hd->h_cmd == DLM_RCOM && type == DLM_RCOM_STATUS)
			FUNC6(nodeid, &p->rcom);
		return;
	}

	/* this rwsem allows dlm_ls_stop() to wait for all dlm_recv threads to
	   be inactive (in this ls) before transitioning to recovery mode */

	FUNC7(&ls->ls_recv_active);
	if (hd->h_cmd == DLM_MSG)
		FUNC4(ls, &p->message, nodeid);
	else
		FUNC5(ls, &p->rcom, nodeid);
	FUNC9(&ls->ls_recv_active);

	FUNC2(ls);
}