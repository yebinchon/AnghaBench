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
struct super_block {scalar_t__ s_count; int /*<<< orphan*/  s_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct super_block *sb)
{
	/* check for race with generic_shutdown_super() */
	if (FUNC2(&sb->s_list)) {
		/* super block is removed, need to restart... */
		FUNC1(sb);
		return 1;
	}
	/* can't be the last, since s_list is still in use */
	sb->s_count--;
	FUNC0(sb->s_count == 0);
	return 0;
}