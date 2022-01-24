#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {scalar_t__ fileset; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Freewmap ; 
 scalar_t__ FILESYSTEM_I ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

void FUNC11(struct inode *inode)
{
	FUNC5("In jfs_delete_inode, inode = 0x%p", inode);

	if (!FUNC3(inode) &&
	    (FUNC0(inode)->fileset == FILESYSTEM_I)) {
		FUNC7(&inode->i_data, 0);

		if (FUNC6(COMMIT_Freewmap, inode))
			FUNC4(inode);

		FUNC2(inode);

		/*
		 * Free the inode from the quota allocation.
		 */
		FUNC10(inode);
		FUNC9(inode);
		FUNC8(inode);
	}

	FUNC1(inode);
}