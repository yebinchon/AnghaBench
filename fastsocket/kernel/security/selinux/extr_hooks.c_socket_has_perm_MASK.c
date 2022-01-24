#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct socket {int /*<<< orphan*/  sk; } ;
struct inode_security_struct {scalar_t__ sid; int /*<<< orphan*/  sclass; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {TYPE_2__ net; } ;
struct common_audit_data {TYPE_1__ u; } ;
struct TYPE_6__ {struct inode_security_struct* i_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET ; 
 scalar_t__ SECINITSID_KERNEL ; 
 TYPE_3__* FUNC1 (struct socket*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *task, struct socket *sock,
			   u32 perms)
{
	struct inode_security_struct *isec;
	struct common_audit_data ad;
	u32 sid;
	int err = 0;

	isec = FUNC1(sock)->i_security;

	if (isec->sid == SECINITSID_KERNEL)
		goto out;
	sid = FUNC3(task);

	FUNC0(&ad, NET);
	ad.u.net.sk = sock->sk;
	err = FUNC2(sid, isec->sid, isec->sclass, perms, &ad);

out:
	return err;
}