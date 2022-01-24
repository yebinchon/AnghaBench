#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* vol; int /*<<< orphan*/  count; int /*<<< orphan*/  mrec_lock; int /*<<< orphan*/  mft_no; } ;
typedef  TYPE_2__ ntfs_inode ;
struct TYPE_5__ {int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  MFT_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

MFT_RECORD *FUNC10(ntfs_inode *ni)
{
	MFT_RECORD *m;

	FUNC8("Entering for mft_no 0x%lx.", ni->mft_no);

	/* Make sure the ntfs inode doesn't go away. */
	FUNC3(&ni->count);

	/* Serialize access to this mft record. */
	FUNC6(&ni->mrec_lock);

	m = FUNC5(ni);
	if (FUNC4(!FUNC0(m)))
		return m;

	FUNC7(&ni->mrec_lock);
	FUNC2(&ni->count);
	FUNC9(ni->vol->sb, "Failed with error code %lu.", -FUNC1(m));
	return m;
}