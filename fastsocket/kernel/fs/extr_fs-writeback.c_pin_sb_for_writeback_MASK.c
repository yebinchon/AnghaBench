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
struct super_block {int /*<<< orphan*/  s_umount; scalar_t__ s_root; int /*<<< orphan*/  s_count; int /*<<< orphan*/  s_instances; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  sb_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct super_block *sb)
{
	FUNC3(&sb_lock);
	if (FUNC1(&sb->s_instances)) {
		FUNC4(&sb_lock);
		return false;
	}

	sb->s_count++;
	FUNC4(&sb_lock);

	if (FUNC0(&sb->s_umount)) {
		if (sb->s_root)
			return true;
		FUNC5(&sb->s_umount);
	}

	FUNC2(sb);
	return false;
}