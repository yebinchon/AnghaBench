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
struct jffs2_sb_info {int /*<<< orphan*/  erase_completion_lock; scalar_t__ gc_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ FUNC0 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct jffs2_sb_info *c)
{
	FUNC2(&c->erase_completion_lock);
	if (c->gc_task && FUNC0(c))
		FUNC1(SIGHUP, c->gc_task, 1);
	FUNC3(&c->erase_completion_lock);
}