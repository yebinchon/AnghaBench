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
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_message {int m_type; int /*<<< orphan*/  m_result; int /*<<< orphan*/  m_remid; int /*<<< orphan*/  m_lkid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
#define  DLM_MSG_BAST 141 
#define  DLM_MSG_CANCEL 140 
#define  DLM_MSG_CANCEL_REPLY 139 
#define  DLM_MSG_CONVERT 138 
#define  DLM_MSG_CONVERT_REPLY 137 
#define  DLM_MSG_GRANT 136 
#define  DLM_MSG_LOOKUP 135 
#define  DLM_MSG_LOOKUP_REPLY 134 
#define  DLM_MSG_PURGE 133 
#define  DLM_MSG_REMOVE 132 
#define  DLM_MSG_REQUEST 131 
#define  DLM_MSG_REQUEST_REPLY 130 
#define  DLM_MSG_UNLOCK 129 
#define  DLM_MSG_UNLOCK_REPLY 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC16 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC17 (struct dlm_ls*,struct dlm_message*) ; 

__attribute__((used)) static void FUNC18(struct dlm_ls *ls, struct dlm_message *ms)
{
	if (!FUNC1(ls, ms->m_header.h_nodeid)) {
		FUNC2(ls, "ignore non-member message %d from %d %x %x %d",
			  ms->m_type, ms->m_header.h_nodeid, ms->m_lkid,
			  ms->m_remid, ms->m_result);
		return;
	}

	switch (ms->m_type) {

	/* messages sent to a master node */

	case DLM_MSG_REQUEST:
		FUNC14(ls, ms);
		break;

	case DLM_MSG_CONVERT:
		FUNC7(ls, ms);
		break;

	case DLM_MSG_UNLOCK:
		FUNC16(ls, ms);
		break;

	case DLM_MSG_CANCEL:
		FUNC5(ls, ms);
		break;

	/* messages sent from a master node (replies to above) */

	case DLM_MSG_REQUEST_REPLY:
		FUNC15(ls, ms);
		break;

	case DLM_MSG_CONVERT_REPLY:
		FUNC8(ls, ms);
		break;

	case DLM_MSG_UNLOCK_REPLY:
		FUNC17(ls, ms);
		break;

	case DLM_MSG_CANCEL_REPLY:
		FUNC6(ls, ms);
		break;

	/* messages sent from a master node (only two types of async msg) */

	case DLM_MSG_GRANT:
		FUNC9(ls, ms);
		break;

	case DLM_MSG_BAST:
		FUNC4(ls, ms);
		break;

	/* messages sent to a dir node */

	case DLM_MSG_LOOKUP:
		FUNC10(ls, ms);
		break;

	case DLM_MSG_REMOVE:
		FUNC13(ls, ms);
		break;

	/* messages sent from a dir node (remove has no reply) */

	case DLM_MSG_LOOKUP_REPLY:
		FUNC11(ls, ms);
		break;

	/* other messages */

	case DLM_MSG_PURGE:
		FUNC12(ls, ms);
		break;

	default:
		FUNC3(ls, "unknown message type %d", ms->m_type);
	}

	FUNC0();
}