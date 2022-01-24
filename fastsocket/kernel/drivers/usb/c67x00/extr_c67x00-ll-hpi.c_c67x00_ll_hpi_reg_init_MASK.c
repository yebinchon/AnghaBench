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
struct c67x00_device {int dummy; } ;

/* Variables and functions */
 int C67X00_SIES ; 
 int /*<<< orphan*/  HPI_IRQ_ROUTING_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct c67x00_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct c67x00_device *dev)
{
	int i;

	FUNC3(dev);
	FUNC1(dev);
	FUNC4(dev, HPI_IRQ_ROUTING_REG, 0);

	for (i = 0; i < C67X00_SIES; i++) {
		FUNC4(dev, FUNC0(i), 0);
		FUNC2(dev, FUNC0(i));
	}
}