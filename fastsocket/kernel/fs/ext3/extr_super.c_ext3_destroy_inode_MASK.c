#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext3_inode_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_orphan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ext3_inode_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	if (!FUNC3(&(FUNC0(inode)->i_orphan))) {
		FUNC5("EXT3 Inode %p: orphan list check failed!\n",
			FUNC0(inode));
		FUNC4(KERN_INFO, "", DUMP_PREFIX_ADDRESS, 16, 4,
				FUNC0(inode), sizeof(struct ext3_inode_info),
				false);
		FUNC1();
	}
	FUNC2(ext3_inode_cachep, FUNC0(inode));
}