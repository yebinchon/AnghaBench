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
 int /*<<< orphan*/  CH_PPI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	/*struct bfin_t350mcqbfb_info *info = (struct bfin_t350mcqbfb_info *)dev_id;*/

	u16 status = FUNC0();
	FUNC3(0xFFFF);

	if (status) {
		FUNC1();
		FUNC4(CH_PPI);

		/* start dma */
		FUNC5(CH_PPI);
		FUNC2();
		FUNC3(0xFFFF);
	}

	return IRQ_HANDLED;
}