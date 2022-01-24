#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct net {TYPE_1__* proc_net; } ;
struct kstat {int /*<<< orphan*/  nlink; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct kstat*) ; 
 struct net* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 

__attribute__((used)) static int FUNC3(struct vfsmount *mnt, struct dentry *dentry,
		struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct net *net;

	net = FUNC1(inode);

	FUNC0(inode, stat);

	if (net != NULL) {
		stat->nlink = net->proc_net->nlink;
		FUNC2(net);
	}

	return 0;
}