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
struct platform_device {int dummy; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUM_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  V_BAC_DISABLE_IDLE ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev, pm_message_t state)
{
	int retval = 0;
	struct clk *clk;

	clk = FUNC2(0, "dum_ck");
	if (!FUNC0(clk)) {
		FUNC4(clk, 0);
		FUNC3(clk);
	} else
		retval = FUNC1(clk);

	/* disable BAC */
	DUM_CTRL = V_BAC_DISABLE_IDLE;

	/* LCD standby & turn off display */
	FUNC5();

	return retval;
}