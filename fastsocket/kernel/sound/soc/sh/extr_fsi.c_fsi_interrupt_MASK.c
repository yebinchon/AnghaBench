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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  fsib; int /*<<< orphan*/  fsia; } ;

/* Variables and functions */
 int INT_A_OUT ; 
 int INT_B_OUT ; 
 int /*<<< orphan*/  INT_ST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* master ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	u32 status = FUNC1(SOFT_RST) & ~0x00000010;
	u32 int_st = FUNC1(INT_ST);

	/* clear irq status */
	FUNC2(SOFT_RST, status);
	FUNC2(SOFT_RST, status | 0x00000010);

	if (int_st & INT_A_OUT)
		FUNC0(&master->fsia);
	if (int_st & INT_B_OUT)
		FUNC0(&master->fsib);

	FUNC2(INT_ST, 0x0000000);

	return IRQ_HANDLED;
}