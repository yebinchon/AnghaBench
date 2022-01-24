#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int irq_mode; int trigger_bits; int /*<<< orphan*/  trg_intrflag; int /*<<< orphan*/  trg_bytes; int /*<<< orphan*/  trg_buf; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;

/* Variables and functions */
#define  IMODE_INPUT 129 
#define  IMODE_OUTPUT 128 
 TYPE_3__** audio_devs ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(int dev, int bits)
{
	sb_devc *devc = audio_devs[dev]->devc;
	bits &= devc->irq_mode;

	if (!bits)
		FUNC2(devc, 0xd0);	/* Halt DMA */
	else
	{
		switch (devc->irq_mode)
		{
			case IMODE_INPUT:
				FUNC1(dev, devc->trg_buf, devc->trg_bytes,
						devc->trg_intrflag);
				break;

			case IMODE_OUTPUT:
				FUNC0(dev, devc->trg_buf, devc->trg_bytes,
						devc->trg_intrflag);
			    break;
		}
	}
	devc->trigger_bits = bits;
}