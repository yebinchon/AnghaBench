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
struct nfs_delegation {int type; } ;
struct inode {int dummy; } ;
typedef  int fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct nfs_delegation* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct inode *inode, fmode_t fmode)
{
	struct nfs_delegation *delegation;

	FUNC3();
	delegation = FUNC2(FUNC0(inode)->delegation);
	if (delegation == NULL || (delegation->type & fmode) == fmode) {
		FUNC4();
		return;
	}
	FUNC4();
	FUNC1(inode);
}