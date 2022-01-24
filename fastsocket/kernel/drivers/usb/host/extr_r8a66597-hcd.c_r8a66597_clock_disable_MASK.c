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
struct r8a66597 {int /*<<< orphan*/  clk; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLLC ; 
 int /*<<< orphan*/  SCKE ; 
 int /*<<< orphan*/  SYSCFG0 ; 
 int /*<<< orphan*/  USBE ; 
 int /*<<< orphan*/  XCKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597)
{
	FUNC1(r8a66597, SCKE, SYSCFG0);
	FUNC2(1);

	if (r8a66597->pdata->on_chip) {
#ifdef CONFIG_HAVE_CLK
		clk_disable(r8a66597->clk);
#endif
	} else {
		FUNC1(r8a66597, PLLC, SYSCFG0);
		FUNC1(r8a66597, XCKE, SYSCFG0);
		FUNC1(r8a66597, USBE, SYSCFG0);
	}
}