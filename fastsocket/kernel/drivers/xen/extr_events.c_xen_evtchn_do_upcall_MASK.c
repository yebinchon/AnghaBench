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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct pt_regs* FUNC4 (struct pt_regs*) ; 

void FUNC5(struct pt_regs *regs)
{
	struct pt_regs *old_regs = FUNC4(regs);

	FUNC1();
	FUNC2();

	FUNC0();

	FUNC3();
	FUNC4(old_regs);
}