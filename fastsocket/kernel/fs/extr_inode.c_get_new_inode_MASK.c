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
struct inode {int i_state; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int I_LOCK ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct hlist_head*,struct inode*) ; 
 struct inode* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC8(struct super_block *sb,
				struct hlist_head *head,
				int (*test)(struct inode *, void *),
				int (*set)(struct inode *, void *),
				void *data)
{
	struct inode *inode;

	inode = FUNC2(sb);
	if (inode) {
		struct inode *old;

		FUNC5(&inode_lock);
		/* We released the lock, so.. */
		old = FUNC4(sb, head, test, data);
		if (!old) {
			if (set(inode, data))
				goto set_failed;

			FUNC1(sb, head, inode);
			inode->i_state = I_LOCK|I_NEW;
			FUNC6(&inode_lock);

			/* Return the locked inode with I_NEW set, the
			 * caller is responsible for filling in the contents
			 */
			return inode;
		}

		/*
		 * Uhhuh, somebody else created the same inode under
		 * us. Use the old inode instead of the one we just
		 * allocated.
		 */
		FUNC0(old);
		FUNC6(&inode_lock);
		FUNC3(inode);
		inode = old;
		FUNC7(inode);
	}
	return inode;

set_failed:
	FUNC6(&inode_lock);
	FUNC3(inode);
	return NULL;
}