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
struct azx_dev {int insufficient; int index; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTCTL ; 
 int /*<<< orphan*/  SD_CTL ; 
 int SD_CTL_DMA_START ; 
 int SD_INT_MASK ; 
 int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct azx *chip, struct azx_dev *azx_dev)
{
	/*
	 * Before stream start, initialize parameter
	 */
	azx_dev->insufficient = 1;

	/* enable SIE */
	FUNC3(chip, INTCTL,
		   FUNC0(chip, INTCTL) | (1 << azx_dev->index));
	/* set DMA start and interrupt mask */
	FUNC2(azx_dev, SD_CTL, FUNC1(azx_dev, SD_CTL) |
		      SD_CTL_DMA_START | SD_INT_MASK);
}