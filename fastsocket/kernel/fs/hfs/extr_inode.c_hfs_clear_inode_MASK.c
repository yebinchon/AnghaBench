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
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* rsrc_inode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

void FUNC3(struct inode *inode)
{
	if (FUNC1(inode) && FUNC0(inode)->rsrc_inode) {
		FUNC0(FUNC0(inode)->rsrc_inode)->rsrc_inode = NULL;
		FUNC2(FUNC0(inode)->rsrc_inode);
	}
}