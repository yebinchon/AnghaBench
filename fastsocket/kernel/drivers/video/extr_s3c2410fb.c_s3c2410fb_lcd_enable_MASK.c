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
struct TYPE_2__ {int /*<<< orphan*/  lcdcon1; } ;
struct s3c2410fb_info {scalar_t__ io; TYPE_1__ regs; } ;

/* Variables and functions */
 scalar_t__ S3C2410_LCDCON1 ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_ENVID ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct s3c2410fb_info *fbi, int enable)
{
	unsigned long flags;

	FUNC1(flags);

	if (enable)
		fbi->regs.lcdcon1 |= S3C2410_LCDCON1_ENVID;
	else
		fbi->regs.lcdcon1 &= ~S3C2410_LCDCON1_ENVID;

	FUNC2(fbi->regs.lcdcon1, fbi->io + S3C2410_LCDCON1);

	FUNC0(flags);
}