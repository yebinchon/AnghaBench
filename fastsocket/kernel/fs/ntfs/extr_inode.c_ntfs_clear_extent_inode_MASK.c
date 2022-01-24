#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  base_ntfs_ino; } ;
struct TYPE_11__ {int nr_extents; TYPE_2__* vol; TYPE_1__ ext; int /*<<< orphan*/  mft_no; } ;
typedef  TYPE_3__ ntfs_inode ;
struct TYPE_10__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(ntfs_inode *ni)
{
	FUNC6("Entering for inode 0x%lx.", ni->mft_no);

	FUNC0(FUNC1(ni));
	FUNC0(ni->nr_extents != -1);

#ifdef NTFS_RW
	if (NInoDirty(ni)) {
		if (!is_bad_inode(VFS_I(ni->ext.base_ntfs_ino)))
			ntfs_error(ni->vol->sb, "Clearing dirty extent inode!  "
					"Losing data!  This is a BUG!!!");
		// FIXME:  Do something!!!
	}
#endif /* NTFS_RW */

	FUNC4(ni);

	/* Bye, bye... */
	FUNC7(ni);
}