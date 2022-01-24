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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpwdt_timer_con ; 
 int /*<<< orphan*/  hpwdt_timer_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload ; 
 int /*<<< orphan*/  soft_margin ; 

__attribute__((used)) static void FUNC3(void)
{
	reload = FUNC0(soft_margin);
	FUNC1(reload, hpwdt_timer_reg);
	FUNC2(0x85, hpwdt_timer_con);
}