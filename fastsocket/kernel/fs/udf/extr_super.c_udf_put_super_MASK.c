#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udf_sb_info {int s_partitions; int /*<<< orphan*/ * s_partmaps; int /*<<< orphan*/  s_lvid_bh; int /*<<< orphan*/  s_nls_map; scalar_t__ s_vat_inode; } ;
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int /*<<< orphan*/  UDF_FLAG_NLS_MAP ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct super_block *sb)
{
	int i;
	struct udf_sb_info *sbi;

	sbi = FUNC1(sb);

	FUNC5();

	if (sbi->s_vat_inode)
		FUNC3(sbi->s_vat_inode);
	if (sbi->s_partitions)
		for (i = 0; i < sbi->s_partitions; i++)
			FUNC7(&sbi->s_partmaps[i]);
#ifdef CONFIG_UDF_NLS
	if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP))
		unload_nls(sbi->s_nls_map);
#endif
	if (!(sb->s_flags & MS_RDONLY))
		FUNC6(sb);
	FUNC2(sbi->s_lvid_bh);
	FUNC4(sbi->s_partmaps);
	FUNC4(sb->s_fs_info);
	sb->s_fs_info = NULL;

	FUNC9();
}