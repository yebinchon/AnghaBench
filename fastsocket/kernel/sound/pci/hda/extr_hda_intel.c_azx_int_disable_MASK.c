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
struct azx_dev {int dummy; } ;
struct azx {int num_streams; struct azx_dev* azx_dev; } ;

/* Variables and functions */
 int ICH6_INT_CTRL_EN ; 
 int ICH6_INT_GLOBAL_EN ; 
 int /*<<< orphan*/  INTCTL ; 
 int /*<<< orphan*/  SD_CTL ; 
 int SD_INT_MASK ; 
 int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct azx *chip)
{
	int i;

	/* disable interrupts in stream descriptor */
	for (i = 0; i < chip->num_streams; i++) {
		struct azx_dev *azx_dev = &chip->azx_dev[i];
		FUNC2(azx_dev, SD_CTL,
			      FUNC1(azx_dev, SD_CTL) & ~SD_INT_MASK);
	}

	/* disable SIE for all streams */
	FUNC3(chip, INTCTL, 0);

	/* disable controller CIE and GIE */
	FUNC4(chip, INTCTL, FUNC0(chip, INTCTL) &
		   ~(ICH6_INT_CTRL_EN | ICH6_INT_GLOBAL_EN));
}