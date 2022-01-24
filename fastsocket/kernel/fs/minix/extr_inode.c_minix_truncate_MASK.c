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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ MINIX_V1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

void FUNC6(struct inode * inode)
{
	if (!(FUNC3(inode->i_mode) || FUNC1(inode->i_mode) || FUNC2(inode->i_mode)))
		return;
	if (FUNC0(inode) == MINIX_V1)
		FUNC4(inode);
	else
		FUNC5(inode);
}