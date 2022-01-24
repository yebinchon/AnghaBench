#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct socket {int dummy; } ;
struct sock {struct socket* sk_socket; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; } ;
struct inode_security_struct {int /*<<< orphan*/  sclass; } ;
struct TYPE_5__ {struct inode_security_struct* i_security; } ;
struct TYPE_4__ {int /*<<< orphan*/  audit_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  selinux_enforcing ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,struct socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	int err = 0;
	u32 perm;
	struct nlmsghdr *nlh;
	struct socket *sock = sk->sk_socket;
	struct inode_security_struct *isec = FUNC1(sock)->i_security;

	if (skb->len < FUNC0(0)) {
		err = -EINVAL;
		goto out;
	}
	nlh = FUNC3(skb);

	err = FUNC5(isec->sclass, nlh->nlmsg_type, &perm);
	if (err) {
		if (err == -EINVAL) {
			FUNC2(current->audit_context, GFP_KERNEL, AUDIT_SELINUX_ERR,
				  "SELinux:  unrecognized netlink message"
				  " type=%hu for sclass=%hu\n",
				  nlh->nlmsg_type, isec->sclass);
			if (!selinux_enforcing || FUNC4())
				err = 0;
		}

		/* Ignore */
		if (err == -ENOENT)
			err = 0;
		goto out;
	}

	err = FUNC6(current, sock, perm);
out:
	return err;
}