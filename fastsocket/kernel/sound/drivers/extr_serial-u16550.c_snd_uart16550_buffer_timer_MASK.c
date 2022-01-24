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
struct snd_uart16550 {int /*<<< orphan*/  open_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	unsigned long flags;
	struct snd_uart16550 *uart;

	uart = (struct snd_uart16550 *)data;
	FUNC2(&uart->open_lock, flags);
	FUNC0(uart);
	FUNC1(uart);
	FUNC3(&uart->open_lock, flags);
}