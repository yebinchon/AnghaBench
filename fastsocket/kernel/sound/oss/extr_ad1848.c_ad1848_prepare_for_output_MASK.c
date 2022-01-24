#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int speed_bits; int format_bits; int channels; int speed; } ;
typedef  TYPE_1__ ad1848_port_info ;
struct TYPE_10__ {scalar_t__ model; scalar_t__ timer_running; scalar_t__ xfer_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_11__ {scalar_t__ portc; scalar_t__ devc; } ;

/* Variables and functions */
 scalar_t__ MD_1845 ; 
 scalar_t__ MD_1845_SSCAPE ; 
 scalar_t__ MD_4232 ; 
 scalar_t__ MD_4236 ; 
 scalar_t__ MD_IWAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 unsigned char FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,unsigned char) ; 
 TYPE_3__** audio_devs ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int timer_installed ; 

__attribute__((used)) static int FUNC10(int dev, int bsize, int bcount)
{
	int             timeout;
	unsigned char   fs, old_fs, tmp = 0;
	unsigned long   flags;
	ad1848_info    *devc = (ad1848_info *) audio_devs[dev]->devc;
	ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;

	FUNC4(devc);

	FUNC8(&devc->lock,flags);
	fs = portc->speed_bits | (portc->format_bits << 5);

	if (portc->channels > 1)
		fs |= 0x10;

	FUNC2(devc);	/* Enables changes to the format select reg */

	if (devc->model == MD_1845 || devc->model == MD_1845_SSCAPE) /* Use alternate speed select registers */
	{
		fs &= 0xf0;	/* Mask off the rate select bits */

		FUNC6(devc, 22, (portc->speed >> 8) & 0xff);	/* Speed MSB */
		FUNC6(devc, 23, portc->speed & 0xff);	/* Speed LSB */
	}
	old_fs = FUNC5(devc, 8);

	if (devc->model == MD_4232 || devc->model >= MD_4236)
	{
		tmp = FUNC5(devc, 16);
		FUNC6(devc, 16, tmp | 0x30);
	}
	if (devc->model == MD_IWAVE)
		FUNC6(devc, 17, 0xc2);	/* Disable variable frequency select */

	FUNC6(devc, 8, fs);

	/*
	 * Write to I8 starts resynchronization. Wait until it completes.
	 */

	timeout = 0;
	while (timeout < 100 && FUNC7(devc->base) != 0x80)
		timeout++;
	timeout = 0;
	while (timeout < 10000 && FUNC7(devc->base) == 0x80)
		timeout++;

	if (devc->model >= MD_4232)
		FUNC6(devc, 16, tmp & ~0x30);

	FUNC3(devc);	/*
				 * Starts the calibration process.
				 */
	FUNC9(&devc->lock,flags);
	devc->xfer_count = 0;

#ifndef EXCLUDE_TIMERS
	if (dev == timer_installed && devc->timer_running)
		if ((fs & 0x01) != (old_fs & 0x01))
		{
			FUNC1(dev);
		}
#endif
	FUNC0(dev);
	return 0;
}