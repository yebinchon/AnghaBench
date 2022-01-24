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
struct ufs_sb_private_info {scalar_t__ s_sbbase; int s_ipg; scalar_t__ s_fpb; int /*<<< orphan*/  s_inopb; } ;
struct TYPE_4__ {int /*<<< orphan*/  cg_initediblk; } ;
struct TYPE_5__ {TYPE_1__ cg_u2; } ;
struct ufs_cylinder_group {TYPE_2__ cg_u; } ;
struct ufs_cg_private_info {int c_cgx; } ;
struct super_block {int s_flags; int /*<<< orphan*/  s_blocksize; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int MS_SYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_cg_private_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_3__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC9 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC16(struct super_block *sb,
				   struct ufs_cg_private_info *ucpi,
				   struct ufs_cylinder_group *ucg)
{
	struct buffer_head *bh;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	sector_t beg = uspi->s_sbbase +
		FUNC14(ucpi->c_cgx * uspi->s_ipg +
			      FUNC5(sb, ucg->cg_u.cg_u2.cg_initediblk));
	sector_t end = beg + uspi->s_fpb;

	FUNC1("ENTER cgno %d\n", ucpi->c_cgx);

	for (; beg < end; ++beg) {
		bh = FUNC9(sb, beg);
		FUNC6(bh);
		FUNC8(bh->b_data, 0, sb->s_blocksize);
		FUNC10(bh);
		FUNC7(bh);
		FUNC15(bh);
		if (sb->s_flags & MS_SYNCHRONOUS)
			FUNC11(bh);
		FUNC3(bh);
	}

	FUNC4(sb, &ucg->cg_u.cg_u2.cg_initediblk, uspi->s_inopb);
	FUNC12(FUNC0(ucpi));
	if (sb->s_flags & MS_SYNCHRONOUS)
		FUNC13(FUNC0(ucpi));

	FUNC1("EXIT\n");
}