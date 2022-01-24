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
struct rcom_lock {int dummy; } ;
struct TYPE_2__ {int h_length; } ;
struct dlm_rcom {int rc_type; TYPE_1__ rc_header; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
#define  DLM_RCOM_LOCK 135 
#define  DLM_RCOM_LOCK_REPLY 134 
#define  DLM_RCOM_LOOKUP 133 
#define  DLM_RCOM_LOOKUP_REPLY 132 
#define  DLM_RCOM_NAMES 131 
#define  DLM_RCOM_NAMES_REPLY 130 
#define  DLM_RCOM_STATUS 129 
#define  DLM_RCOM_STATUS_REPLY 128 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_rcom*) ; 
 scalar_t__ FUNC1 (struct dlm_ls*) ; 
 scalar_t__ FUNC2 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ls*,struct dlm_rcom*) ; 

void FUNC11(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
	int lock_size = sizeof(struct dlm_rcom) + sizeof(struct rcom_lock);

	if (FUNC1(ls) && (rc->rc_type != DLM_RCOM_STATUS)) {
		FUNC3(ls, "ignoring recovery message %x from %d",
			  rc->rc_type, nodeid);
		goto out;
	}

	if (FUNC2(ls, rc))
		goto out;

	switch (rc->rc_type) {
	case DLM_RCOM_STATUS:
		FUNC9(ls, rc);
		break;

	case DLM_RCOM_NAMES:
		FUNC8(ls, rc);
		break;

	case DLM_RCOM_LOOKUP:
		FUNC6(ls, rc);
		break;

	case DLM_RCOM_LOCK:
		if (rc->rc_header.h_length < lock_size)
			goto Eshort;
		FUNC5(ls, rc);
		break;

	case DLM_RCOM_STATUS_REPLY:
		FUNC10(ls, rc);
		break;

	case DLM_RCOM_NAMES_REPLY:
		FUNC10(ls, rc);
		break;

	case DLM_RCOM_LOOKUP_REPLY:
		FUNC7(ls, rc);
		break;

	case DLM_RCOM_LOCK_REPLY:
		if (rc->rc_header.h_length < lock_size)
			goto Eshort;
		FUNC0(ls, rc);
		break;

	default:
		FUNC4(ls, "receive_rcom bad type %d", rc->rc_type);
	}
out:
	return;
Eshort:
	FUNC4(ls, "recovery message %x from %d is too short",
			  rc->rc_type, nodeid);
}