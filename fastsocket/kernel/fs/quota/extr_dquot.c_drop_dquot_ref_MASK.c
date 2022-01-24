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
struct super_block {scalar_t__ dq_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqptr_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  tofree_head ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb, int type)
{
	FUNC0(tofree_head);

	if (sb->dq_op) {
		FUNC1(&FUNC4(sb)->dqptr_sem);
		FUNC3(sb, type, &tofree_head);
		FUNC5(&FUNC4(sb)->dqptr_sem);
		FUNC2(&tofree_head);
	}
}