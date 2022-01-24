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
struct task_struct {unsigned int sessionid; int /*<<< orphan*/  loginuid; int /*<<< orphan*/  pid; struct audit_context* audit_context; } ;
struct audit_context {scalar_t__ in_syscall; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_LOGIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct audit_buffer* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 
 int /*<<< orphan*/  session_id ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

int FUNC6(struct task_struct *task, uid_t loginuid)
{
	unsigned int sessionid = FUNC0(&session_id);
	struct audit_context *context = task->audit_context;

	if (context && context->in_syscall) {
		struct audit_buffer *ab;

		ab = FUNC3(NULL, GFP_KERNEL, AUDIT_LOGIN);
		if (ab) {
			FUNC2(ab, "pid=%d uid=%u", task->pid,
					 FUNC5(task));
			FUNC4(ab);
			FUNC2(ab, " old auid=%u new auid=%u "
					 "old ses=%u new ses=%u",
					 task->loginuid, loginuid,
					 task->sessionid, sessionid);
			FUNC1(ab);
		}
	}
	task->sessionid = sessionid;
	task->loginuid = loginuid;
	return 0;
}