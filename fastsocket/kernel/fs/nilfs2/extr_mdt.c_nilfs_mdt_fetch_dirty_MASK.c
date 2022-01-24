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
struct nilfs_inode_info {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_bmap; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_DIRTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);

	if (FUNC1(ii->i_bmap)) {
		FUNC2(NILFS_I_DIRTY, &ii->i_state);
		return 1;
	}
	return FUNC3(NILFS_I_DIRTY, &ii->i_state);
}