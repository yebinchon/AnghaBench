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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct bt455_regs *regs)
{
	FUNC0();
	regs->addr_ovly = 0x0f;
	FUNC1();
	regs->addr_ovly = 0x0f;
	FUNC1();
	regs->addr_ovly = 0x0f;
}