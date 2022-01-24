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
struct neofb_par {int* CRTC; int /*<<< orphan*/ * Attribute; int /*<<< orphan*/ * Graphics; int /*<<< orphan*/ * Sequencer; int /*<<< orphan*/  MiscOutReg; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct fb_info *info,
			 const struct neofb_par *par)
{
	int i;

	FUNC3(NULL, VGA_MIS_W, par->MiscOutReg);

	for (i = 1; i < 5; i++)
		FUNC6(NULL, i, par->Sequencer[i]);

	/* Ensure CRTC registers 0-7 are unlocked by clearing bit 7 or CRTC[17] */
	FUNC4(NULL, 17, par->CRTC[17] & ~0x80);

	for (i = 0; i < 25; i++)
		FUNC4(NULL, i, par->CRTC[i]);

	for (i = 0; i < 9; i++)
		FUNC5(NULL, i, par->Graphics[i]);

	FUNC1();

	for (i = 0; i < 21; i++)
		FUNC2(i, par->Attribute[i]);

	FUNC0();
}