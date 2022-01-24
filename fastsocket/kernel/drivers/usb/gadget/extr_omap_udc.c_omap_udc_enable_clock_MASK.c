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
struct TYPE_2__ {int /*<<< orphan*/ * dc_clk; int /*<<< orphan*/ * hhc_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* udc ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int enable)
{
	if (udc == NULL || udc->dc_clk == NULL || udc->hhc_clk == NULL)
		return;

	if (enable) {
		FUNC1(udc->dc_clk);
		FUNC1(udc->hhc_clk);
		FUNC2(100);
	} else {
		FUNC0(udc->hhc_clk);
		FUNC0(udc->dc_clk);
	}
}