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
struct inode {long i_blocks; int /*<<< orphan*/  i_lock; TYPE_1__* i_mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 long FUNC0 (struct hstate*) ; 
 struct hstate* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct hugepage_subpool*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct hstate*,long) ; 
 long FUNC4 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hugepage_subpool* FUNC7 (struct inode*) ; 

void FUNC8(struct inode *inode, long offset, long freed)
{
	struct hstate *h = FUNC1(inode);
	long chg = FUNC4(&inode->i_mapping->private_list, offset);
	struct hugepage_subpool *spool = FUNC7(inode);

	FUNC5(&inode->i_lock);
	inode->i_blocks -= (FUNC0(h) * freed);
	FUNC6(&inode->i_lock);

	FUNC2(spool, (chg - freed));
	FUNC3(h, -(chg - freed));
}