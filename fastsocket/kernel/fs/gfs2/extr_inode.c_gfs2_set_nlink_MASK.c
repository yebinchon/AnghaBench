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
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 

__attribute__((used)) static void FUNC1(struct inode *inode, u32 nlink)
{
	/*
	 * We will need to review setting the nlink count here in the
	 * light of the forthcoming ro bind mount work. This is a reminder
	 * to do that.
	 */
	if ((inode->i_nlink != nlink) && (inode->i_nlink != 0)) {
		if (nlink == 0)
			FUNC0(inode);
		else
			inode->i_nlink = nlink;
	}
}