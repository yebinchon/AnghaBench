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
struct ubifs_znode {struct ubifs_znode* parent; scalar_t__ iip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC1 (struct ubifs_znode*,scalar_t__) ; 
 struct ubifs_znode* FUNC2 (struct ubifs_znode*) ; 
 scalar_t__ FUNC3 (int) ; 

struct ubifs_znode *FUNC4(struct ubifs_znode *znode)
{
	struct ubifs_znode *zn;

	FUNC0(znode);
	if (FUNC3(!znode->parent))
		return NULL;

	/* Switch to the next index in the parent */
	zn = FUNC1(znode->parent, znode->iip + 1);
	if (!zn)
		/* This is in fact the last child, return parent */
		return znode->parent;

	/* Go to the first znode in this new subtree */
	return FUNC2(zn);
}