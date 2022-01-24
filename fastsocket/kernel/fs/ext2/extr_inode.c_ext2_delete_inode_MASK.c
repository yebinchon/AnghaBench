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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_dtime; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC12 (struct inode * inode)
{
	FUNC11(&inode->i_data, 0);

	if (FUNC7(inode))
		goto no_delete;
	FUNC10(inode->i_sb);
	FUNC0(inode)->i_dtime	= FUNC5();
	FUNC8(inode);
	FUNC1(inode, FUNC6(inode));

	inode->i_size = 0;
	if (inode->i_blocks)
		FUNC4 (inode);
	FUNC3 (inode);
	FUNC9(inode->i_sb);

	return;
no_delete:
	FUNC2(inode);	/* We must guarantee clearing of inode... */
}