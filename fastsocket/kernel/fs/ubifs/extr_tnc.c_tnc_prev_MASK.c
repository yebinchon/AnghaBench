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
struct ubifs_znode {int iip; scalar_t__ level; int child_cnt; struct ubifs_znode* parent; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC2 (struct ubifs_info*,struct ubifs_znode*,int) ; 

__attribute__((used)) static int FUNC3(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
{
	struct ubifs_znode *znode = *zn;
	int nn = *n;

	if (nn > 0) {
		*n = nn - 1;
		return 0;
	}
	while (1) {
		struct ubifs_znode *zp;

		zp = znode->parent;
		if (!zp)
			return -ENOENT;
		nn = znode->iip - 1;
		znode = zp;
		if (nn >= 0) {
			znode = FUNC2(c, znode, nn);
			if (FUNC0(znode))
				return FUNC1(znode);
			while (znode->level != 0) {
				nn = znode->child_cnt - 1;
				znode = FUNC2(c, znode, nn);
				if (FUNC0(znode))
					return FUNC1(znode);
			}
			nn = znode->child_cnt - 1;
			break;
		}
	}
	*zn = znode;
	*n = nn;
	return 0;
}