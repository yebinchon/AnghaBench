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
struct socket {TYPE_3__* ops; struct sock* sk; } ;
struct sock {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ PF_UNIX ; 
 struct socket* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

struct sock *FUNC2(struct file *filp)
{
	struct sock *u_sock = NULL;
	struct inode *inode = filp->f_path.dentry->d_inode;

	/*
	 *	Socket ?
	 */
	if (FUNC1(inode->i_mode)) {
		struct socket *sock = FUNC0(inode);
		struct sock *s = sock->sk;

		/*
		 *	PF_UNIX ?
		 */
		if (s && sock->ops && sock->ops->family == PF_UNIX)
			u_sock = s;
	}
	return u_sock;
}