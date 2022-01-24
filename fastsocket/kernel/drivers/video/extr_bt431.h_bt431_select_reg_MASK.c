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
typedef  int /*<<< orphan*/  u16 ;
struct bt431_regs {int /*<<< orphan*/  addr_hi; int /*<<< orphan*/  addr_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct bt431_regs *regs, int ir)
{
	/*
	 * The compiler splits the write in two bytes without these
	 * helper variables.
	 */
	volatile u16 *lo = &(regs->addr_lo);
	volatile u16 *hi = &(regs->addr_hi);

	FUNC1();
	*lo = FUNC0(ir & 0xff);
	FUNC2();
	*hi = FUNC0((ir >> 8) & 0xff);
}