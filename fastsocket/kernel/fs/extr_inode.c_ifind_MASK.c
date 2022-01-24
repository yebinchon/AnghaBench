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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ; 
 int /*<<< orphan*/  inode_lock ; 
 scalar_t__ FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb,
		struct hlist_head *head, int (*test)(struct inode *, void *),
		void *data, const int wait)
{
	struct inode *inode;

	FUNC3(&inode_lock);
	inode = FUNC1(sb, head, test, data);
	if (inode) {
		FUNC0(inode);
		FUNC4(&inode_lock);
		if (FUNC2(wait))
			FUNC5(inode);
		return inode;
	}
	FUNC4(&inode_lock);
	return NULL;
}