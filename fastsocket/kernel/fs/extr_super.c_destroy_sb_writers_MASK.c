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
struct TYPE_2__ {int /*<<< orphan*/ * counter; } ;
struct super_block {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int SB_FREEZE_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct super_block *s)
{
	int i;

	/* Out of tree modules don't use this mechanism */
	if (FUNC2(!FUNC1(s)))
		return;

	for (i = 0; i < SB_FREEZE_LEVELS; i++)
		FUNC0(&s->s_writers.counter[i]);
}