#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct hfs_find_data {TYPE_2__* key; } ;
struct TYPE_6__ {int flags; scalar_t__ cached_blocks; scalar_t__ cached_start; int /*<<< orphan*/  cached_extents; } ;
struct TYPE_4__ {int /*<<< orphan*/  FABN; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFS_FK_DATA ; 
 int /*<<< orphan*/  HFS_FK_RSRC ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct hfs_find_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct hfs_find_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct hfs_find_data *fd, struct inode *inode, u32 block)
{
	int res;

	if (FUNC0(inode)->flags & HFS_FLG_EXT_DIRTY)
		FUNC3(inode, fd);

	res = FUNC2(fd, FUNC0(inode)->cached_extents, inode->i_ino,
				    block, FUNC1(inode) ? HFS_FK_RSRC : HFS_FK_DATA);
	if (!res) {
		FUNC0(inode)->cached_start = FUNC4(fd->key->ext.FABN);
		FUNC0(inode)->cached_blocks = FUNC5(FUNC0(inode)->cached_extents);
	} else {
		FUNC0(inode)->cached_start = FUNC0(inode)->cached_blocks = 0;
		FUNC0(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
	}
	return res;
}