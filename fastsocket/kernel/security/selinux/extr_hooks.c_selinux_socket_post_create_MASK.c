#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct task_security_struct {void* sockcreate_sid; void* sid; } ;
struct socket {TYPE_1__* sk; } ;
struct sk_security_struct {int /*<<< orphan*/  sclass; void* sid; } ;
struct inode_security_struct {int initialized; int /*<<< orphan*/  sclass; void* sid; } ;
struct cred {struct task_security_struct* security; } ;
struct TYPE_4__ {struct inode_security_struct* i_security; } ;
struct TYPE_3__ {struct sk_security_struct* sk_security; } ;

/* Variables and functions */
 void* SECINITSID_KERNEL ; 
 TYPE_2__* FUNC0 (struct socket*) ; 
 struct cred* FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, int family,
				      int type, int protocol, int kern)
{
	const struct cred *cred = FUNC1();
	const struct task_security_struct *tsec = cred->security;
	struct inode_security_struct *isec;
	struct sk_security_struct *sksec;
	u32 sid, newsid;
	int err = 0;

	sid = tsec->sid;
	newsid = tsec->sockcreate_sid;

	isec = FUNC0(sock)->i_security;

	if (kern)
		isec->sid = SECINITSID_KERNEL;
	else if (newsid)
		isec->sid = newsid;
	else
		isec->sid = sid;

	isec->sclass = FUNC3(family, type, protocol);
	isec->initialized = 1;

	if (sock->sk) {
		sksec = sock->sk->sk_security;
		sksec->sid = isec->sid;
		sksec->sclass = isec->sclass;
		err = FUNC2(sock->sk, family);
	}

	return err;
}