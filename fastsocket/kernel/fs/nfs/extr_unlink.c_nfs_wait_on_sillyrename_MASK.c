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
struct nfs_inode {int /*<<< orphan*/  silly_count; int /*<<< orphan*/  waitqueue; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct dentry *dentry)
{
	struct nfs_inode *nfsi = FUNC0(dentry->d_inode);

	FUNC2(nfsi->waitqueue, FUNC1(&nfsi->silly_count) <= 1);
}