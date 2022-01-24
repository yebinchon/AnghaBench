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
typedef  int u32 ;

/* Variables and functions */
 unsigned int CLOCK ; 
 int /*<<< orphan*/  CPCCR ; 
 int /*<<< orphan*/  FUNC0 (int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int wd_ctr ; 
 scalar_t__ wd_regs ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(unsigned int to)
{
	u32 reg;
	const u32 wdval = (to * CLOCK) & ~0x0000000f;

	FUNC2();
	reg = FUNC3(CPCCR) & ~(0xf << (wd_ctr * 4));
	FUNC4(reg, CPCCR);
	FUNC6();
	FUNC0(wdval, wd_regs + 0x0000);
	FUNC6();
	FUNC4(reg | (0x2 << (wd_ctr * 4)), CPCCR);
	FUNC6();
	FUNC4(reg | (0x5 << (wd_ctr * 4)), CPCCR);
	FUNC1();
	FUNC5();
}