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
struct pxafb_info {int* fdadr; int reg_lccr0; int reg_lccr1; int reg_lccr2; int reg_lccr3; int lccr0; int reg_lccr4; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDADR0 ; 
 int /*<<< orphan*/  FDADR1 ; 
 int /*<<< orphan*/  LCCR0 ; 
 int LCCR0_ENB ; 
 int LCCR0_LCDT ; 
 int /*<<< orphan*/  LCCR1 ; 
 int /*<<< orphan*/  LCCR2 ; 
 int /*<<< orphan*/  LCCR3 ; 
 int /*<<< orphan*/  LCCR4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxafb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct pxafb_info *fbi)
{
	FUNC2("pxafb: Enabling LCD controller\n");
	FUNC2("fdadr0 0x%08x\n", (unsigned int) fbi->fdadr[0]);
	FUNC2("fdadr1 0x%08x\n", (unsigned int) fbi->fdadr[1]);
	FUNC2("reg_lccr0 0x%08x\n", (unsigned int) fbi->reg_lccr0);
	FUNC2("reg_lccr1 0x%08x\n", (unsigned int) fbi->reg_lccr1);
	FUNC2("reg_lccr2 0x%08x\n", (unsigned int) fbi->reg_lccr2);
	FUNC2("reg_lccr3 0x%08x\n", (unsigned int) fbi->reg_lccr3);

	/* enable LCD controller clock */
	FUNC0(fbi->clk);

	if (fbi->lccr0 & LCCR0_LCDT)
		return;

	/* Sequence from 11.7.10 */
	FUNC1(fbi, LCCR4, fbi->reg_lccr4);
	FUNC1(fbi, LCCR3, fbi->reg_lccr3);
	FUNC1(fbi, LCCR2, fbi->reg_lccr2);
	FUNC1(fbi, LCCR1, fbi->reg_lccr1);
	FUNC1(fbi, LCCR0, fbi->reg_lccr0 & ~LCCR0_ENB);

	FUNC1(fbi, FDADR0, fbi->fdadr[0]);
	FUNC1(fbi, FDADR1, fbi->fdadr[1]);
	FUNC1(fbi, LCCR0, fbi->reg_lccr0 | LCCR0_ENB);
}