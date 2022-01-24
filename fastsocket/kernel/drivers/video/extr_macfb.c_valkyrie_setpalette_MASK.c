#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_1__* valkyrie_cmap_regs ; 

__attribute__((used)) static int FUNC4 (unsigned int regno, unsigned int red,
				unsigned int green, unsigned int blue,
				struct fb_info *info)
{
	unsigned long flags;
	
	red >>= 8;
	green >>= 8;
	blue >>= 8;

	FUNC1(flags);
	
	/* tell clut which address to fill */
	FUNC3(regno, &valkyrie_cmap_regs->addr);
	FUNC2();

	/* send one color channel at a time */
	FUNC3(red, &valkyrie_cmap_regs->lut);
	FUNC2();
	FUNC3(green, &valkyrie_cmap_regs->lut);
	FUNC2();
	FUNC3(blue, &valkyrie_cmap_regs->lut);

	FUNC0(flags);
	return 0;
}