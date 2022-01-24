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
struct snd_uart16550 {scalar_t__ filemode; int /*<<< orphan*/  open_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SERIAL_MODE_NOT_OPENED ; 
 scalar_t__ UART_IIR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct snd_uart16550 *uart;

	uart = dev_id;
	FUNC2(&uart->open_lock);
	if (uart->filemode == SERIAL_MODE_NOT_OPENED) {
		FUNC3(&uart->open_lock);
		return IRQ_NONE;
	}
	/* indicate to the UART that the interrupt has been serviced */
	FUNC0(uart->base + UART_IIR);
	FUNC1(uart);
	FUNC3(&uart->open_lock);
	return IRQ_HANDLED;
}