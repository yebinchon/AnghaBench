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
struct hw {int /*<<< orphan*/  irq_callback_data; int /*<<< orphan*/  (* irq_callback ) (int /*<<< orphan*/ ,unsigned int) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct hw *hw = dev_id;
	unsigned int status;

	status = FUNC0(hw, GIP);
	if (!status)
		return IRQ_NONE;

	if (hw->irq_callback)
		hw->irq_callback(hw->irq_callback_data, status);

	FUNC1(hw, GIP, status);
	return IRQ_HANDLED;
}