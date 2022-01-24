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
struct c67x00_sie {int /*<<< orphan*/  sie_num; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DONE_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPI_IRQ_ROUTING_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SOF_EOP_IRQ_EN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c67x00_sie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct c67x00_sie *sie, int port)
{
	/* Clear connect change */
	FUNC5(sie, FUNC1(port));

	/* Enable interrupts */
	FUNC6(sie->dev, HPI_IRQ_ROUTING_REG,
		     FUNC3(sie->sie_num));
	FUNC6(sie->dev, FUNC0(sie->sie_num),
		     SOF_EOP_IRQ_EN | DONE_IRQ_EN);

	/* Enable pull down transistors */
	FUNC6(sie->dev, FUNC4(sie->sie_num), FUNC2(port));
}