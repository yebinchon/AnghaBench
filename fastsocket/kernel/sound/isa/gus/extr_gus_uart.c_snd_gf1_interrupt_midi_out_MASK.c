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
struct TYPE_2__ {int uart_cmd; } ;
struct snd_gus_card {int /*<<< orphan*/  uart_cmd_lock; TYPE_1__ gf1; int /*<<< orphan*/  midi_substream_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,char) ; 
 int FUNC3 (struct snd_gus_card*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct snd_gus_card * gus)
{
	char byte;
	unsigned long flags;

	/* try unlock output */
	if (FUNC3(gus) & 0x01)
		FUNC0(gus);

	FUNC5(&gus->uart_cmd_lock, flags);
	if (FUNC3(gus) & 0x02) {	/* Tx FIFO free? */
		if (FUNC4(gus->midi_substream_output, &byte, 1) != 1) {	/* no other bytes or error */
			FUNC1(gus, gus->gf1.uart_cmd & ~0x20); /* disable Tx interrupt */
		} else {
			FUNC2(gus, byte);
		}
	}
	FUNC6(&gus->uart_cmd_lock, flags);
}