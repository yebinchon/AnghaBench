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

/* Variables and functions */
 int BAC_ENABLED ; 
 int DUM_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int V_BAC_DISABLE_TRIG ; 
 int V_BAC_ENABLE ; 
 int V_MUX_RESET ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int retval = 0;
	struct clk *clk;

	clk = FUNC2(0, "dum_ck");
	if (!FUNC0(clk)) {
		FUNC4(clk, 1);
		FUNC3(clk);
	} else
		retval = FUNC1(clk);

	/* wait for BAC disable */
	DUM_CTRL = V_BAC_DISABLE_TRIG;

	while (DUM_CTRL & BAC_ENABLED)
		FUNC6(10);

	/* re-init LCD */
	FUNC5();

	/* enable BAC and reset MUX */
	DUM_CTRL = V_BAC_ENABLE;
	FUNC6(1);
	DUM_CTRL = V_MUX_RESET;
	return 0;
}