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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int /*<<< orphan*/  rule; } ;
struct audit_netlink_list {int pid; int /*<<< orphan*/  q; } ;
struct audit_entry {int /*<<< orphan*/  rule; } ;

/* Variables and functions */
#define  AUDIT_ADD 133 
#define  AUDIT_ADD_RULE 132 
#define  AUDIT_DEL 131 
#define  AUDIT_DEL_RULE 130 
#define  AUDIT_LIST 129 
#define  AUDIT_LIST_RULES 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (void*,size_t) ; 
 int FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  audit_filter_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 struct task_struct* FUNC9 (void*) ; 
 int /*<<< orphan*/  audit_send_list ; 
 int /*<<< orphan*/  FUNC10 (struct audit_netlink_list*) ; 
 struct audit_netlink_list* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC12 (int /*<<< orphan*/ ,struct audit_netlink_list*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(int type, int pid, int uid, int seq, void *data,
			 size_t datasz, uid_t loginuid, u32 sessionid, u32 sid)
{
	struct task_struct *tsk;
	struct audit_netlink_list *dest;
	int err = 0;
	struct audit_entry *entry;

	switch (type) {
	case AUDIT_LIST:
	case AUDIT_LIST_RULES:
		/* We can't just spew out the rules here because we might fill
		 * the available socket buffer space and deadlock waiting for
		 * auditctl to read from it... which isn't ever going to
		 * happen if we're actually running in the context of auditctl
		 * trying to _send_ the stuff */

		dest = FUNC11(sizeof(struct audit_netlink_list), GFP_KERNEL);
		if (!dest)
			return -ENOMEM;
		dest->pid = pid;
		FUNC15(&dest->q);

		FUNC13(&audit_filter_mutex);
		if (type == AUDIT_LIST)
			FUNC6(pid, seq, &dest->q);
		else
			FUNC7(pid, seq, &dest->q);
		FUNC14(&audit_filter_mutex);

		tsk = FUNC12(audit_send_list, dest, "audit_send_list");
		if (FUNC0(tsk)) {
			FUNC16(&dest->q);
			FUNC10(dest);
			err = FUNC1(tsk);
		}
		break;
	case AUDIT_ADD:
	case AUDIT_ADD_RULE:
		if (type == AUDIT_ADD)
			entry = FUNC9(data);
		else
			entry = FUNC3(data, datasz);
		if (FUNC0(entry))
			return FUNC1(entry);

		err = FUNC2(entry);
		FUNC8(loginuid, sessionid, sid, "add rule",
				      &entry->rule, !err);

		if (err)
			FUNC5(entry);
		break;
	case AUDIT_DEL:
	case AUDIT_DEL_RULE:
		if (type == AUDIT_DEL)
			entry = FUNC9(data);
		else
			entry = FUNC3(data, datasz);
		if (FUNC0(entry))
			return FUNC1(entry);

		err = FUNC4(entry);
		FUNC8(loginuid, sessionid, sid, "remove rule",
				      &entry->rule, !err);

		FUNC5(entry);
		break;
	default:
		return -EINVAL;
	}

	return err;
}