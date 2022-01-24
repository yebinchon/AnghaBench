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
struct savagefb_par {int dummy; } ;
struct savage_reg {int* CRTC; int /*<<< orphan*/ * Attribute; int /*<<< orphan*/ * Graphics; int /*<<< orphan*/ * Sequencer; int /*<<< orphan*/  MiscOutReg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,struct savagefb_par*) ; 

__attribute__((used)) static void FUNC7(struct savagefb_par  *par, struct savage_reg *reg)
{
	int i;

	FUNC5(reg->MiscOutReg, par);

	for (i = 1; i < 5; i++)
		FUNC6(i, reg->Sequencer[i], par);

	/* Ensure CRTC registers 0-7 are unlocked by clearing bit 7 or
	   CRTC[17] */
	FUNC3(17, reg->CRTC[17] & ~0x80, par);

	for (i = 0; i < 25; i++)
		FUNC3(i, reg->CRTC[i], par);

	for (i = 0; i < 9; i++)
		FUNC4(i, reg->Graphics[i], par);

	FUNC1(par);

	for (i = 0; i < 21; i++)
		FUNC2(i, reg->Attribute[i], par);

	FUNC0(par);
}