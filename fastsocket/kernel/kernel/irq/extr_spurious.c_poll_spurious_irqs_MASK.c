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

/* Variables and functions */
 scalar_t__ POLL_SPURIOUS_IRQ_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  poll_spurious_irq_timer ; 

__attribute__((used)) static void FUNC2(unsigned long dummy)
{
	FUNC1();

	FUNC0(&poll_spurious_irq_timer,
		  jiffies + POLL_SPURIOUS_IRQ_INTERVAL);
}