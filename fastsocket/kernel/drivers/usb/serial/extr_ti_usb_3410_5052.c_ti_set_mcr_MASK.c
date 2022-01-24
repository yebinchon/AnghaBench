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
struct ti_port {unsigned int tp_shadow_mcr; int /*<<< orphan*/  tp_lock; scalar_t__ tp_uart_base_addr; int /*<<< orphan*/  tp_tdev; } ;

/* Variables and functions */
 int TI_MCR_DTR ; 
 int TI_MCR_LOOP ; 
 int TI_MCR_RTS ; 
 scalar_t__ TI_UART_OFFSET_MCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct ti_port *tport, unsigned int mcr)
{
	unsigned long flags;
	int status;

	status = FUNC2(tport->tp_tdev,
		tport->tp_uart_base_addr + TI_UART_OFFSET_MCR,
		TI_MCR_RTS | TI_MCR_DTR | TI_MCR_LOOP, mcr);

	FUNC0(&tport->tp_lock, flags);
	if (!status)
		tport->tp_shadow_mcr = mcr;
	FUNC1(&tport->tp_lock, flags);

	return status;
}