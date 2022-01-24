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
typedef  int /*<<< orphan*/  tid_t ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int wait)
{
	tid_t target;

	FUNC3(sb, wait);
	if (FUNC1(FUNC0(sb)->s_journal, &target)) {
		if (wait)
			FUNC2(FUNC0(sb)->s_journal, target);
	}
	return 0;
}