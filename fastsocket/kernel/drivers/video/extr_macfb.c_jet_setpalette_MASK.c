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
struct jet_cmap_regs {int /*<<< orphan*/  lut; int /*<<< orphan*/  addr; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct jet_cmap_regs* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_slot ; 

__attribute__((used)) static int FUNC5(unsigned int regno, unsigned int red,
			  unsigned int green, unsigned int blue,
			  struct fb_info *info)
{
	volatile struct jet_cmap_regs *cmap_regs =
		FUNC3(video_slot);
	/* use MSBs */
	unsigned char _red   = (red>>8);
	unsigned char _green = (green>>8);
	unsigned char _blue  = (blue>>8);
	unsigned long flags;

	FUNC1(flags);
	
	FUNC4(regno, &cmap_regs->addr); FUNC2();
	FUNC4(_red, &cmap_regs->lut); FUNC2();
	FUNC4(_green, &cmap_regs->lut); FUNC2();
	FUNC4(_blue, &cmap_regs->lut);

	FUNC0(flags);
	return 0;
}