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
struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct nfs_delegation*,int) ; 
 struct nfs_delegation* FUNC2 (struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_delegation *delegation;
	int err = 0;

	FUNC3(inode);
	delegation = FUNC2(nfsi);
	if (delegation != NULL)
		err = FUNC1(inode, delegation, 1);
	return err;
}