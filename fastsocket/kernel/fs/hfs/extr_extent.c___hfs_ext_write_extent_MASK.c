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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct hfs_find_data {int /*<<< orphan*/  entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; int /*<<< orphan*/  search_key; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  cached_start; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  HFS_FK_DATA ; 
 int /*<<< orphan*/  HFS_FK_RSRC ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_find_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct hfs_find_data *fd)
{
	int res;

	FUNC5(fd->search_key, inode->i_ino, FUNC0(inode)->cached_start,
			  FUNC1(inode) ?  HFS_FK_RSRC : HFS_FK_DATA);
	res = FUNC3(fd);
	if (FUNC0(inode)->flags & HFS_FLG_EXT_NEW) {
		if (res != -ENOENT)
			return;
		FUNC4(fd, FUNC0(inode)->cached_extents, sizeof(hfs_extent_rec));
		FUNC0(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
	} else {
		if (res)
			return;
		FUNC2(fd->bnode, FUNC0(inode)->cached_extents, fd->entryoffset, fd->entrylength);
		FUNC0(inode)->flags &= ~HFS_FLG_EXT_DIRTY;
	}
}