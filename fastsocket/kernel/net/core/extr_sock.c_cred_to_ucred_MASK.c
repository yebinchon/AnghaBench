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
struct user_namespace {int dummy; } ;
struct ucred {int uid; int gid; int /*<<< orphan*/  pid; } ;
struct pid {int dummy; } ;
struct cred {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 struct user_namespace* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pid*) ; 
 int FUNC2 (struct user_namespace*,struct cred const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct user_namespace*,struct cred const*,int /*<<< orphan*/ ) ; 

void FUNC4(struct pid *pid, const struct cred *cred,
		   struct ucred *ucred)
{
	ucred->pid = FUNC1(pid);
	ucred->uid = ucred->gid = -1;
	if (cred) {
		struct user_namespace *current_ns = FUNC0();

		ucred->uid = FUNC3(current_ns, cred, cred->euid);
		ucred->gid = FUNC2(current_ns, cred, cred->egid);
	}
}