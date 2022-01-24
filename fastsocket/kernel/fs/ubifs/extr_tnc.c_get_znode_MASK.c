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
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 struct ubifs_znode* FUNC0 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ; 

__attribute__((used)) static struct ubifs_znode *FUNC1(struct ubifs_info *c,
				     struct ubifs_znode *znode, int n)
{
	struct ubifs_zbranch *zbr;

	zbr = &znode->zbranch[n];
	if (zbr->znode)
		znode = zbr->znode;
	else
		znode = FUNC0(c, zbr, znode, n);
	return znode;
}