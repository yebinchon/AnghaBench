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
typedef  int u16 ;
struct snd_hal2 {struct hal2_ctl_regs* ctl_regs; } ;
struct hal2_ctl_regs {int /*<<< orphan*/  iar; int /*<<< orphan*/  idr3; int /*<<< orphan*/  idr2; int /*<<< orphan*/  idr1; int /*<<< orphan*/  idr0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hal2_ctl_regs*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_hal2 *hal2, u16 addr, u16 bit)
{
	struct hal2_ctl_regs *regs = hal2->ctl_regs;

	FUNC4(FUNC1(addr), &regs->iar);
	FUNC0(regs);
	FUNC4((FUNC3(&regs->idr0) & 0xffff) & ~bit, &regs->idr0);
	FUNC4(0, &regs->idr1);
	FUNC4(0, &regs->idr2);
	FUNC4(0, &regs->idr3);
	FUNC4(FUNC2(addr), &regs->iar);
	FUNC0(regs);
}