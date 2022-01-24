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
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; scalar_t__ s_dirt; } ;
struct hfsplus_vh {int /*<<< orphan*/  attributes; int /*<<< orphan*/  modify_date; } ;
struct TYPE_2__ {int /*<<< orphan*/  nls; int /*<<< orphan*/  s_vhbh; int /*<<< orphan*/  hidden_dir; int /*<<< orphan*/  alloc_file; int /*<<< orphan*/  ext_tree; int /*<<< orphan*/  cat_tree; struct hfsplus_vh* s_vhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_SUPER ; 
 TYPE_1__ FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFSPLUS_VOL_INCNSTNT ; 
 int /*<<< orphan*/  HFSPLUS_VOL_UNMNT ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct super_block *sb)
{
	FUNC3(DBG_SUPER, "hfsplus_put_super\n");
	if (!sb->s_fs_info)
		return;

	FUNC9();

	if (sb->s_dirt)
		FUNC6(sb);
	if (!(sb->s_flags & MS_RDONLY) && FUNC0(sb).s_vhdr) {
		struct hfsplus_vh *vhdr = FUNC0(sb).s_vhdr;

		vhdr->modify_date = FUNC5();
		vhdr->attributes |= FUNC2(HFSPLUS_VOL_UNMNT);
		vhdr->attributes &= FUNC2(~HFSPLUS_VOL_INCNSTNT);
		FUNC10(FUNC0(sb).s_vhbh);
		FUNC11(FUNC0(sb).s_vhbh);
	}

	FUNC4(FUNC0(sb).cat_tree);
	FUNC4(FUNC0(sb).ext_tree);
	FUNC7(FUNC0(sb).alloc_file);
	FUNC7(FUNC0(sb).hidden_dir);
	FUNC1(FUNC0(sb).s_vhbh);
	FUNC12(FUNC0(sb).nls);
	FUNC8(sb->s_fs_info);
	sb->s_fs_info = NULL;

	FUNC13();
}