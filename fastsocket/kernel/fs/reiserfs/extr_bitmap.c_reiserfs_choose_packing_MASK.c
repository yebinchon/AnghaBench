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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packing_groups ; 

__le32 FUNC4(struct inode * dir)
{
	__le32 packing;
	if (FUNC1(packing_groups, dir->i_sb)) {
		u32 parent_dir = FUNC3(FUNC0(dir)->k_dir_id);
		/*
		 * some versions of reiserfsck expect packing locality 1 to be
		 * special
		 */
		if (parent_dir == 1 || FUNC2(dir->i_sb, parent_dir))
			packing = FUNC0(dir)->k_objectid;
		else
			packing = FUNC0(dir)->k_dir_id;
	} else
		packing = FUNC0(dir)->k_objectid;
	return packing;
}