#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ ntfs_inode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ntfs_big_inode_cache ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(struct inode *inode)
{
	ntfs_inode *ni = FUNC2(inode);

	FUNC5("Entering.");
	FUNC1(ni->page);
	if (!FUNC3(&ni->count))
		FUNC0();
	FUNC4(ntfs_big_inode_cache, FUNC2(inode));
}