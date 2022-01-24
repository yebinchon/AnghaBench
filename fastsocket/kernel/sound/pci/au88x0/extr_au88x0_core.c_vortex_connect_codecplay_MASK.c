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
typedef  int /*<<< orphan*/  vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(vortex_t * vortex, int en, unsigned char mixers[])
{
#ifdef CHIP_AU8820
	vortex_connection_mix_adb(vortex, en, 0x11, mixers[0], ADB_CODECOUT(0));
	vortex_connection_mix_adb(vortex, en, 0x11, mixers[1], ADB_CODECOUT(1));
#else
#if 1
	// Connect front channels through EQ.
	FUNC4(vortex, en, 0x11, mixers[0], FUNC1(0));
	FUNC4(vortex, en, 0x11, mixers[1], FUNC1(1));
	/* Lower volume, since EQ has some gain. */
	FUNC5(vortex, mixers[0], 0);
	FUNC5(vortex, mixers[1], 0);
	FUNC6(vortex, en, 0x11, FUNC2(0), FUNC0(0));
	FUNC6(vortex, en, 0x11, FUNC2(1), FUNC0(1));

	/* Check if reg 0x28 has SDAC bit set. */
	if (FUNC3(vortex)) {
		/* Rear channel. Note: ADB_CODECOUT(0+2) and (1+2) is for AC97 modem */
		FUNC4(vortex, en, 0x11, mixers[2],
					  FUNC0(0 + 4));
		FUNC4(vortex, en, 0x11, mixers[3],
					  FUNC0(1 + 4));
		/* printk(KERN_DEBUG "SDAC detected "); */
	}
#else
	// Use plain direct output to codec.
	vortex_connection_mix_adb(vortex, en, 0x11, mixers[0], ADB_CODECOUT(0));
	vortex_connection_mix_adb(vortex, en, 0x11, mixers[1], ADB_CODECOUT(1));
#endif
#endif
}