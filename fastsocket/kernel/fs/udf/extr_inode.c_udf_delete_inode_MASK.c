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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct inode *inode)
{
	FUNC4(&inode->i_data, 0);

	if (FUNC2(inode))
		goto no_delete;

	inode->i_size = 0;
	FUNC6(inode);
	FUNC3();

	FUNC7(inode, FUNC0(inode));
	FUNC5(inode);

	FUNC8();
	return;

no_delete:
	FUNC1(inode);
}