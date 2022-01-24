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
struct sep_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_HOST_IMR_REG_ADDR ; 
 int /*<<< orphan*/  SEP_DIRVER_IRQ_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sep_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sep_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct sep_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sep_device *sep, unsigned long arg)
{
	FUNC0("SEP Driver:--------> sep_end_transaction_handler start\n");

#if 0				/*!SEP_DRIVER_POLLING_MODE */
	/* close IMR */
	sep_write_reg(sep, HW_HOST_IMR_REG_ADDR, 0x7FFF);

	/* release IRQ line */
	free_irq(SEP_DIRVER_IRQ_NUM, sep);

	/* lock the sep mutex */
	mutex_unlock(&sep_mutex);
#endif

	FUNC0("SEP Driver:<-------- sep_end_transaction_handler end\n");

	return 0;
}