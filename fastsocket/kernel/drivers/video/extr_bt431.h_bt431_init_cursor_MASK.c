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
struct bt431_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT431_REG_WXLO ; 
 int /*<<< orphan*/  FUNC0 (struct bt431_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bt431_regs*,int) ; 

__attribute__((used)) static inline void FUNC2(struct bt431_regs *regs)
{
	/* no crosshair window */
	FUNC0(regs, BT431_REG_WXLO);
	FUNC1(regs, 0x00); /* BT431_REG_WXLO */
	FUNC1(regs, 0x00); /* BT431_REG_WXHI */
	FUNC1(regs, 0x00); /* BT431_REG_WYLO */
	FUNC1(regs, 0x00); /* BT431_REG_WYHI */
	FUNC1(regs, 0x00); /* BT431_REG_WWLO */
	FUNC1(regs, 0x00); /* BT431_REG_WWHI */
	FUNC1(regs, 0x00); /* BT431_REG_WHLO */
	FUNC1(regs, 0x00); /* BT431_REG_WHHI */
}