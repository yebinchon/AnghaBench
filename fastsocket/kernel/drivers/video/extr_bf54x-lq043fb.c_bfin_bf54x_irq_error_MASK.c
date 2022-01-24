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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EPPI0 ; 
 int EPPI_EN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	/*struct bfin_bf54xfb_info *info = dev_id;*/

	u16 status = FUNC1();

	FUNC3(0xFFFF);

	if (status) {
		FUNC2(FUNC0() & ~EPPI_EN);
		FUNC4(CH_EPPI0);

		/* start dma */
		FUNC5(CH_EPPI0);
		FUNC2(FUNC0() | EPPI_EN);
		FUNC3(0xFFFF);
	}

	return IRQ_HANDLED;
}