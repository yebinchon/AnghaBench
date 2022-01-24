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
struct bt455_regs {int addr_cmap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt455_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct bt455_regs *regs, int cr,
					  u8 red, u8 green, u8 blue)
{
	FUNC0(regs, cr);
	FUNC1();
	regs->addr_cmap_data = red & 0x0f;
	FUNC1();
	regs->addr_cmap_data = green & 0x0f;
	FUNC1();
	regs->addr_cmap_data = blue & 0x0f;
}