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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct rpc_inode {int /*<<< orphan*/  in_downcall; struct inode vfs_inode; } ;
struct gss_upcall_msg {int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  uid; struct rpc_inode* inode; } ;

/* Variables and functions */
 struct gss_upcall_msg* FUNC0 (struct rpc_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct gss_upcall_msg *
FUNC5(struct gss_upcall_msg *gss_msg)
{
	struct rpc_inode *rpci = gss_msg->inode;
	struct inode *inode = &rpci->vfs_inode;
	struct gss_upcall_msg *old;

	FUNC3(&inode->i_lock);
	old = FUNC0(rpci, gss_msg->uid);
	if (old == NULL) {
		FUNC1(&gss_msg->count);
		FUNC2(&gss_msg->list, &rpci->in_downcall);
	} else
		gss_msg = old;
	FUNC4(&inode->i_lock);
	return gss_msg;
}