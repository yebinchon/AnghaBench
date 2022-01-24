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
struct qnx4_sb_info {struct qnx4_sb_info* BitMap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qnx4_sb_info*) ; 
 struct qnx4_sb_info* FUNC1 (struct super_block*) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb)
{
	struct qnx4_sb_info *qs = FUNC1(sb);
	FUNC0( qs->BitMap );
	FUNC0( qs );
	sb->s_fs_info = NULL;
	return;
}