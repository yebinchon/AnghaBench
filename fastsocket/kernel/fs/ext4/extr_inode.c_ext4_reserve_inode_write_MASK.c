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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/ * bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,struct ext4_iloc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(handle_t *handle, struct inode *inode,
			 struct ext4_iloc *iloc)
{
	int err;

	err = FUNC2(inode, iloc);
	if (!err) {
		FUNC0(iloc->bh, "get_write_access");
		err = FUNC3(handle, iloc->bh);
		if (err) {
			FUNC1(iloc->bh);
			iloc->bh = NULL;
		}
	}
	FUNC4(inode->i_sb, err);
	return err;
}