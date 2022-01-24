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
struct ufs_super_block_third {int dummy; } ;
struct ufs_super_block_first {int /*<<< orphan*/  fs_time; } ;
struct ufs_sb_private_info {int dummy; } ;
struct super_block {scalar_t__ s_dirt; } ;
struct TYPE_2__ {unsigned int s_flags; struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ UFS_FSOK ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 unsigned int UFS_ST_MASK ; 
 unsigned int UFS_ST_SUN ; 
 unsigned int UFS_ST_SUNOS ; 
 unsigned int UFS_ST_SUNx86 ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 struct ufs_super_block_first* FUNC7 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_third* FUNC8 (struct ufs_sb_private_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct ufs_super_block_first*,struct ufs_super_block_third*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 

__attribute__((used)) static int FUNC13(struct super_block *sb, int wait)
{
	struct ufs_sb_private_info * uspi;
	struct ufs_super_block_first * usb1;
	struct ufs_super_block_third * usb3;
	unsigned flags;

	FUNC6(sb);
	FUNC5();

	FUNC0("ENTER\n");

	flags = FUNC1(sb)->s_flags;
	uspi = FUNC1(sb)->s_uspi;
	usb1 = FUNC7(uspi);
	usb3 = FUNC8(uspi);

	usb1->fs_time = FUNC2(sb, FUNC4());
	if ((flags & UFS_ST_MASK) == UFS_ST_SUN  ||
	    (flags & UFS_ST_MASK) == UFS_ST_SUNOS ||
	    (flags & UFS_ST_MASK) == UFS_ST_SUNx86)
		FUNC10(sb, usb1, usb3,
				UFS_FSOK - FUNC3(sb, usb1->fs_time));
	FUNC9(sb);
	sb->s_dirt = 0;

	FUNC0("EXIT\n");
	FUNC11();
	FUNC12(sb);

	return 0;
}