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
struct sock {scalar_t__ sk_family; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {struct sock* sk; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ AF_NETLINK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSOCK ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

struct sock *FUNC4(struct file *filp)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct sock *sock;

	if (!FUNC2(inode->i_mode))
		return FUNC0(-ENOTSOCK);

	sock = FUNC1(inode)->sk;
	if (sock->sk_family != AF_NETLINK)
		return FUNC0(-EINVAL);

	FUNC3(sock);
	return sock;
}