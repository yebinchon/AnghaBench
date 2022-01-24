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
struct ufs_sb_private_info {scalar_t__ s_ncg; } ;
struct ufs_sb_info {scalar_t__* s_cgno; unsigned int s_cg_loaded; struct ufs_cg_private_info** s_ucpi; struct ufs_sb_private_info* s_uspi; } ;
struct ufs_cylinder_group {void* cg_irotor; void* cg_frotor; void* cg_rotor; } ;
struct ufs_cg_private_info {int /*<<< orphan*/  c_irotor; int /*<<< orphan*/  c_frotor; int /*<<< orphan*/  c_rotor; } ;
struct super_block {int dummy; } ;
struct TYPE_4__ {unsigned int count; int /*<<< orphan*/ * bh; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ufs_cg_private_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ UFS_CGNO_EMPTY ; 
 scalar_t__ UFS_MAX_GROUP_LOADED ; 
 struct ufs_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ufs_cylinder_group* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,char*) ; 

void FUNC8 (struct super_block * sb, unsigned bitmap_nr)
{
	struct ufs_sb_info * sbi = FUNC2(sb);
	struct ufs_sb_private_info * uspi; 
	struct ufs_cg_private_info * ucpi;
	struct ufs_cylinder_group * ucg;
	unsigned i;

	FUNC1("ENTER, bitmap_nr %u\n", bitmap_nr);

	uspi = sbi->s_uspi;
	if (sbi->s_cgno[bitmap_nr] == UFS_CGNO_EMPTY) {
		FUNC1("EXIT\n");
		return;
	}
	ucpi = sbi->s_ucpi[bitmap_nr];
	ucg = FUNC5(FUNC0(ucpi));

	if (uspi->s_ncg > UFS_MAX_GROUP_LOADED && bitmap_nr >= sbi->s_cg_loaded) {
		FUNC7 (sb, "ufs_put_cylinder", "internal error");
		return;
	}
	/*
	 * rotor is not so important data, so we put it to disk 
	 * at the end of working with cylinder
	 */
	ucg->cg_rotor = FUNC4(sb, ucpi->c_rotor);
	ucg->cg_frotor = FUNC4(sb, ucpi->c_frotor);
	ucg->cg_irotor = FUNC4(sb, ucpi->c_irotor);
	FUNC6 (FUNC0(ucpi));
	for (i = 1; i < FUNC0(ucpi)->count; i++) {
		FUNC3 (FUNC0(ucpi)->bh[i]);
	}

	sbi->s_cgno[bitmap_nr] = UFS_CGNO_EMPTY;
	FUNC1("EXIT\n");
}