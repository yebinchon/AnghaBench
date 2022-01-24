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
 int CLOCK_TICK_RATE ; 
 int /*<<< orphan*/  pas_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int pcm_channels ; 
 int pcm_filter ; 
 int pcm_speed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(int arg)
{
	int foo, tmp;
	unsigned long flags;

	if (arg == 0)
		return pcm_speed;

	if (arg > 44100)
		arg = 44100;
	if (arg < 5000)
		arg = 5000;

	if (pcm_channels & 2)
	{
		foo = ((CLOCK_TICK_RATE / 2) + (arg / 2)) / arg;
		arg = ((CLOCK_TICK_RATE / 2) + (foo / 2)) / foo;
	}
	else
	{
		foo = (CLOCK_TICK_RATE + (arg / 2)) / arg;
		arg = (CLOCK_TICK_RATE + (foo / 2)) / foo;
	}

	pcm_speed = arg;

	tmp = FUNC0(0x0B8A);

	/*
	 * Set anti-aliasing filters according to sample rate. You really *NEED*
	 * to enable this feature for all normal recording unless you want to
	 * experiment with aliasing effects.
	 * These filters apply to the selected "recording" source.
	 * I (pfw) don't know the encoding of these 5 bits. The values shown
	 * come from the SDK found on ftp.uwp.edu:/pub/msdos/proaudio/.
	 *
	 * I cleared bit 5 of these values, since that bit controls the master
	 * mute flag. (Olav Wölfelschneider)
	 *
	 */
#if !defined NO_AUTO_FILTER_SET
	tmp &= 0xe0;
	if (pcm_speed >= 2 * 17897)
		tmp |= 0x01;
	else if (pcm_speed >= 2 * 15909)
		tmp |= 0x02;
	else if (pcm_speed >= 2 * 11931)
		tmp |= 0x09;
	else if (pcm_speed >= 2 * 8948)
		tmp |= 0x11;
	else if (pcm_speed >= 2 * 5965)
		tmp |= 0x19;
	else if (pcm_speed >= 2 * 2982)
		tmp |= 0x04;
	pcm_filter = tmp;
#endif

	FUNC2(&pas_lock, flags);

	FUNC1(tmp & ~(0x40 | 0x80), 0x0B8A);
	FUNC1(0x00 | 0x30 | 0x04, 0x138B);
	FUNC1(foo & 0xff, 0x1388);
	FUNC1((foo >> 8) & 0xff, 0x1388);
	FUNC1(tmp, 0x0B8A);

	FUNC3(&pas_lock, flags);

	return pcm_speed;
}