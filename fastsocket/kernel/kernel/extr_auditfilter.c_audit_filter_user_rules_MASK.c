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
struct TYPE_2__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
struct netlink_skb_parms {int /*<<< orphan*/  sid; int /*<<< orphan*/  loginuid; TYPE_1__ creds; } ;
struct audit_krule {int field_count; int action; struct audit_field* fields; } ;
struct audit_field {int type; int /*<<< orphan*/  lsm_rule; int /*<<< orphan*/  op; int /*<<< orphan*/  val; } ;
typedef  enum audit_state { ____Placeholder_audit_state } audit_state ;

/* Variables and functions */
#define  AUDIT_ALWAYS 138 
 int AUDIT_DISABLED ; 
#define  AUDIT_GID 137 
#define  AUDIT_LOGINUID 136 
#define  AUDIT_NEVER 135 
#define  AUDIT_PID 134 
 int AUDIT_RECORD_CONTEXT ; 
#define  AUDIT_SUBJ_CLR 133 
#define  AUDIT_SUBJ_ROLE 132 
#define  AUDIT_SUBJ_SEN 131 
#define  AUDIT_SUBJ_TYPE 130 
#define  AUDIT_SUBJ_USER 129 
#define  AUDIT_UID 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct netlink_skb_parms *cb,
				   struct audit_krule *rule,
				   enum audit_state *state)
{
	int i;

	for (i = 0; i < rule->field_count; i++) {
		struct audit_field *f = &rule->fields[i];
		int result = 0;

		switch (f->type) {
		case AUDIT_PID:
			result = FUNC0(cb->creds.pid, f->op, f->val);
			break;
		case AUDIT_UID:
			result = FUNC0(cb->creds.uid, f->op, f->val);
			break;
		case AUDIT_GID:
			result = FUNC0(cb->creds.gid, f->op, f->val);
			break;
		case AUDIT_LOGINUID:
			result = FUNC0(cb->loginuid, f->op, f->val);
			break;
		case AUDIT_SUBJ_USER:
		case AUDIT_SUBJ_ROLE:
		case AUDIT_SUBJ_TYPE:
		case AUDIT_SUBJ_SEN:
		case AUDIT_SUBJ_CLR:
			if (f->lsm_rule)
				result = FUNC1(cb->sid,
								   f->type,
								   f->op,
								   f->lsm_rule,
								   NULL);
			break;
		}

		if (!result)
			return 0;
	}
	switch (rule->action) {
	case AUDIT_NEVER:    *state = AUDIT_DISABLED;	    break;
	case AUDIT_ALWAYS:   *state = AUDIT_RECORD_CONTEXT; break;
	}
	return 1;
}