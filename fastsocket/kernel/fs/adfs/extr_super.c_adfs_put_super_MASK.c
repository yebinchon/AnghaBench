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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct adfs_sb_info {int s_map_size; struct adfs_sb_info* s_map; int /*<<< orphan*/  dm_bh; } ;

/* Variables and functions */
 struct adfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	int i;
	struct adfs_sb_info *asb = FUNC0(sb);

	FUNC3();

	for (i = 0; i < asb->s_map_size; i++)
		FUNC1(asb->s_map[i].dm_bh);
	FUNC2(asb->s_map);
	FUNC2(asb);
	sb->s_fs_info = NULL;

	FUNC4();
}