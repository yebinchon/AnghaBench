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
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; scalar_t__ s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  numFiles; int /*<<< orphan*/  numDirs; } ;
struct inode {int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_location; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct udf_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct logicalVolIntegrityDescImpUse* FUNC8 (struct udf_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

void FUNC12(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct udf_sb_info *sbi = FUNC2(sb);

	/*
	 * Note: we must free any quota before locking the superblock,
	 * as writing the quota to disk may need the lock as well.
	 */
	FUNC11(inode);
	FUNC10(inode);

	FUNC3(inode);

	FUNC5(&sbi->s_alloc_mutex);
	if (sbi->s_lvid_bh) {
		struct logicalVolIntegrityDescImpUse *lvidiu =
							FUNC8(sbi);
		if (FUNC0(inode->i_mode))
			FUNC4(&lvidiu->numDirs, -1);
		else
			FUNC4(&lvidiu->numFiles, -1);
		FUNC9(sb);
	}
	FUNC6(&sbi->s_alloc_mutex);

	FUNC7(sb, NULL, &FUNC1(inode)->i_location, 0, 1);
}