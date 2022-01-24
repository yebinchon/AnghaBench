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
typedef  int u8 ;

/* Variables and functions */
 int CONFIG_CCR3 ; 
 int CONFIG_CCR3_MAPEN ; 
 int /*<<< orphan*/  gx1_conf_reg_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8 FUNC4(u8 reg)
{
	u8 val, ccr3;
	unsigned long flags;

	FUNC2(&gx1_conf_reg_lock, flags);

	FUNC1(CONFIG_CCR3, 0x22);
	ccr3 = FUNC0(0x23);
	FUNC1(CONFIG_CCR3, 0x22);
	FUNC1(ccr3 | CONFIG_CCR3_MAPEN, 0x23);
	FUNC1(reg, 0x22);
	val = FUNC0(0x23);
	FUNC1(CONFIG_CCR3, 0x22);
	FUNC1(ccr3, 0x23);

	FUNC3(&gx1_conf_reg_lock, flags);

	return val;
}