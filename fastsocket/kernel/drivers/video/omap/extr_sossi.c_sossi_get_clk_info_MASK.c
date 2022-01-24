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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  fck_hz; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sossi ; 

__attribute__((used)) static void FUNC1(u32 *clk_period, u32 *max_clk_div)
{
	*clk_period = FUNC0(sossi.fck_hz);
	*max_clk_div = 8;
}