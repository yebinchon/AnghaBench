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
struct tridentfb_par {int /*<<< orphan*/  io_virt; int /*<<< orphan*/  chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NewMode1 ; 
 int PCIReg ; 
 int /*<<< orphan*/  Protection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tridentfb_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct tridentfb_par *par)
{
	/* Goto New Mode */
	FUNC3(par->io_virt, 0x0B);

	/* Unprotect registers */
	FUNC4(par->io_virt, NewMode1, 0x80);
	if (!FUNC0(par->chip_id))
		FUNC4(par->io_virt, Protection, 0x92);

	/* Disable MMIO */
	FUNC2(par, PCIReg, 0x3D4);
	FUNC2(par, FUNC1(par, 0x3D5) & ~0x01, 0x3D5);
}