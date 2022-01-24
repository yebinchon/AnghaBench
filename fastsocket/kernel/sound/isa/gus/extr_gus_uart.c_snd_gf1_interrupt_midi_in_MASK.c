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
struct TYPE_2__ {int uart_cmd; int /*<<< orphan*/  uart_overrun; int /*<<< orphan*/  uart_framing; } ;
struct snd_gus_card {TYPE_1__ gf1; int /*<<< orphan*/  midi_substream_input; int /*<<< orphan*/  uart_cmd_lock; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct snd_gus_card*) ; 
 unsigned char FUNC1 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_gus_card * gus)
{
	int count;
	unsigned char stat, data, byte;
	unsigned long flags;

	count = 10;
	while (count) {
		FUNC3(&gus->uart_cmd_lock, flags);
		stat = FUNC1(gus);
		if (!(stat & 0x01)) {	/* data in Rx FIFO? */
			FUNC4(&gus->uart_cmd_lock, flags);
			count--;
			continue;
		}
		count = 100;	/* arm counter to new value */
		data = FUNC0(gus);
		if (!(gus->gf1.uart_cmd & 0x80)) {
			FUNC4(&gus->uart_cmd_lock, flags);
			continue;
		}			
		if (stat & 0x10) {	/* framing error */
			gus->gf1.uart_framing++;
			FUNC4(&gus->uart_cmd_lock, flags);
			continue;
		}
		byte = FUNC0(gus);
		FUNC4(&gus->uart_cmd_lock, flags);
		FUNC2(gus->midi_substream_input, &byte, 1);
		if (stat & 0x20) {
			gus->gf1.uart_overrun++;
		}
	}
}