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
struct c67x00_sie {int /*<<< orphan*/  sie_num; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HOST_MODE ; 
 int /*<<< orphan*/  HOST_STAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_sie*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_sie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct c67x00_sie*) ; 

void FUNC7(struct c67x00_sie *sie)
{
	/* Set port into host mode */
	FUNC5(sie->dev, FUNC0(sie->sie_num), HOST_MODE);
	FUNC1(sie);
	/* Clear interrupts */
	FUNC2(sie, HOST_STAT_MASK);
	/* Check */
	if (!(FUNC4(sie->dev, FUNC0(sie->sie_num)) & HOST_MODE))
		FUNC3(FUNC6(sie),
			 "SIE %d not set to host mode\n", sie->sie_num);
}