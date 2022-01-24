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
struct inode {int dummy; } ;
struct hpfs_inode_info {int /*<<< orphan*/ ** i_rddir_off; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct hpfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 

void FUNC2(struct inode *inode, loff_t *pos)
{
	struct hpfs_inode_info *hpfs_inode = FUNC0(inode);
	loff_t **i, **j;

	if (!hpfs_inode->i_rddir_off) goto not_f;
	for (i = hpfs_inode->i_rddir_off; *i; i++) if (*i == pos) goto fnd;
	goto not_f;
	fnd:
	for (j = i + 1; *j; j++) ;
	*i = *(j - 1);
	*(j - 1) = NULL;
	if (j - 1 == hpfs_inode->i_rddir_off) {
		FUNC1(hpfs_inode->i_rddir_off);
		hpfs_inode->i_rddir_off = NULL;
	}
	return;
	not_f:
	/*printk("HPFS: warning: position pointer %p->%08x not found\n", pos, (int)*pos);*/
	return;
}