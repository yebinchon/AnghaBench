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
struct sa1100fb_info {int /*<<< orphan*/  ctrlr_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GPCR ; 
 int HZ ; 
 int /*<<< orphan*/  LCCR0 ; 
 int /*<<< orphan*/  LCCR0_LDM ; 
 int /*<<< orphan*/  LCCR0_LEN ; 
 int LCSR ; 
 int /*<<< orphan*/  SHANNON_GPIO_DISP_EN ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(struct sa1100fb_info *fbi)
{
	FUNC0(wait, current);

	FUNC1("Disabling LCD controller\n");

	if (FUNC3()) {
		GPCR |= SHANNON_GPIO_DISP_EN;
	}	

	FUNC6(TASK_UNINTERRUPTIBLE);
	FUNC2(&fbi->ctrlr_wait, &wait);

	LCSR = 0xffffffff;	/* Clear LCD Status Register */
	LCCR0 &= ~LCCR0_LDM;	/* Enable LCD Disable Done Interrupt */
	LCCR0 &= ~LCCR0_LEN;	/* Disable LCD Controller */

	FUNC5(20 * HZ / 1000);
	FUNC4(&fbi->ctrlr_wait, &wait);
}