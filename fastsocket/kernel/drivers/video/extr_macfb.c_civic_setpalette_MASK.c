#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_4__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  status2; scalar_t__ vbl_addr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ CIVIC_VBL_OFFSET ; 
 TYPE_2__* civic_cmap_regs ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7 (unsigned int regno, unsigned int red,
			     unsigned int green, unsigned int blue,
			     struct fb_info *info)
{
	static int lastreg = -1;
	unsigned long flags;
	int clut_status;
	
	if (info->var.bits_per_pixel > 8) return 1; /* failsafe */

	red   >>= 8;
	green >>= 8;
	blue  >>= 8;

	FUNC1(flags);
	
	/*
	 * Set the register address
	 */
	FUNC5(regno, &civic_cmap_regs->addr); FUNC2();

	/*
	 * Wait for VBL interrupt here;
	 * They're usually not enabled from Penguin, so we won't check
	 */
#if 0
	{
#define CIVIC_VBL_OFFSET	0x120
		volatile unsigned long *vbl = nubus_readl(civic_cmap_regs->vbl_addr + CIVIC_VBL_OFFSET);
		/* do interrupt setup stuff here? */
		*vbl = 0L; nop();	/* clear */
		*vbl = 1L; nop();	/* set */
		while (*vbl != 0L)	/* wait for next vbl */
		{
			usleep(10);	/* needed? */
		}
		/* do interrupt shutdown stuff here? */
	}
#endif

	/*
	 * Grab a status word and do some checking;
	 * Then finally write the clut!
	 */
	clut_status =  FUNC3(&civic_cmap_regs->status2);

	if ((clut_status & 0x0008) == 0)
	{
#if 0
		if ((clut_status & 0x000D) != 0)
		{
			nubus_writeb(0x00, &civic_cmap_regs->lut); nop();
			nubus_writeb(0x00, &civic_cmap_regs->lut); nop();
		}
#endif

		FUNC5(  red, &civic_cmap_regs->lut); FUNC2();
		FUNC5(green, &civic_cmap_regs->lut); FUNC2();
		FUNC5( blue, &civic_cmap_regs->lut); FUNC2();
		FUNC5( 0x00, &civic_cmap_regs->lut); FUNC2();
	}
	else
	{
		unsigned char junk;

		junk = FUNC3(&civic_cmap_regs->lut); FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut); FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut); FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut); FUNC2();

		if ((clut_status & 0x000D) != 0)
		{
			FUNC5(0x00, &civic_cmap_regs->lut); FUNC2();
			FUNC5(0x00, &civic_cmap_regs->lut); FUNC2();
		}

		FUNC5(  red, &civic_cmap_regs->lut); FUNC2();
		FUNC5(green, &civic_cmap_regs->lut); FUNC2();
		FUNC5( blue, &civic_cmap_regs->lut); FUNC2();
		FUNC5( junk, &civic_cmap_regs->lut); FUNC2();
	}

	FUNC0(flags);
	lastreg = regno;
	return 0;
}