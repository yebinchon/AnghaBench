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
struct super_block {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unnamed_dev_ida ; 
 int /*<<< orphan*/  unnamed_dev_lock ; 
 int unnamed_dev_start ; 

void FUNC5(struct super_block *sb)
{
	int slot = FUNC0(sb->s_dev);

	FUNC1(sb);
	FUNC3(&unnamed_dev_lock);
	FUNC2(&unnamed_dev_ida, slot);
	if (slot < unnamed_dev_start)
		unnamed_dev_start = slot;
	FUNC4(&unnamed_dev_lock);
}