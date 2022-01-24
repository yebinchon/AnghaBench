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
struct super_block {int dummy; } ;
struct jffs2_sb_info {int /*<<< orphan*/  alloc_sem; } ;

/* Variables and functions */
 struct jffs2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, int wait)
{
	struct jffs2_sb_info *c = FUNC0(sb);

	FUNC2(sb);

	FUNC3(&c->alloc_sem);
	FUNC1(c);
	FUNC4(&c->alloc_sem);
	return 0;
}