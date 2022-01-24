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
struct pohmelfs_inode {int /*<<< orphan*/  state; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETFS_INODE_REMOTE_SYNCED ; 
 struct pohmelfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct pohmelfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct page **pages, unsigned int page_num,
		void *private, int err)
{
	struct inode *inode = private;
	struct pohmelfs_inode *pi = FUNC0(inode);

	if (inode) {
		if (err) {
			FUNC2(inode);
			FUNC1(NETFS_INODE_REMOTE_SYNCED, &pi->state);
		} else {
			FUNC4(NETFS_INODE_REMOTE_SYNCED, &pi->state);
		}

		FUNC3(pi);
	}

	return err;
}