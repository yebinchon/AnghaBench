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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct task_security_struct {scalar_t__ sockcreate_sid; int /*<<< orphan*/  sid; } ;
struct cred {struct task_security_struct* security; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET__CREATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(int family, int type,
				 int protocol, int kern)
{
	const struct cred *cred = FUNC1();
	const struct task_security_struct *tsec = cred->security;
	u32 sid, newsid;
	u16 secclass;
	int err = 0;

	if (kern)
		goto out;

	sid = tsec->sid;
	newsid = tsec->sockcreate_sid ?: sid;

	secclass = FUNC2(family, type, protocol);
	err = FUNC0(sid, newsid, secclass, SOCKET__CREATE, NULL);

out:
	return err;
}