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
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	struct nfs_delegation *delegation;

	delegation = FUNC1(inode);
	if (delegation) {
		FUNC2(inode, &delegation->stateid);
		FUNC0(delegation);
	}
}