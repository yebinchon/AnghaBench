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
struct bt455_regs {int addr_ovly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt455_regs*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct bt455_regs *regs)
{
	/* bt455_write_cmap_entry(regs, 8, 0x00, 0x00, 0x00); */
	/* bt455_write_cmap_entry(regs, 9, 0x00, 0x00, 0x00); */
	FUNC0(regs, 8, 0x03, 0x03, 0x03);
	FUNC0(regs, 9, 0x07, 0x07, 0x07);

	FUNC1();
	regs->addr_ovly = 0x09;
	FUNC1();
	regs->addr_ovly = 0x09;
	FUNC1();
	regs->addr_ovly = 0x09;
}