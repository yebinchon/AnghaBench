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
typedef  int u32 ;
struct atmel_abdac {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_CLR ; 
 int /*<<< orphan*/  INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UNDERRUN ; 
 int FUNC1 (struct atmel_abdac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_abdac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct atmel_abdac *dac = dev_id;
	u32 status;

	status = FUNC1(dac, INT_STATUS);
	if (status & FUNC0(UNDERRUN)) {
		FUNC3(&dac->pdev->dev, "underrun detected\n");
		FUNC2(dac, INT_CLR, FUNC0(UNDERRUN));
	} else {
		FUNC3(&dac->pdev->dev, "spurious interrupt (status=0x%x)\n",
			status);
		FUNC2(dac, INT_CLR, status);
	}

	return IRQ_HANDLED;
}