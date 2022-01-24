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
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 

int FUNC1(struct inode *inode, void *candidate_lower_inode)
{
	if ((FUNC0(inode)
	     == (struct inode *)candidate_lower_inode))
		return 1;
	else
		return 0;
}