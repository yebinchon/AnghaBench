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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/ * levels ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int             foo;

	FUNC0(FUNC2("pas2_mixer.c: void pas_mixer_reset(void)\n"));

	for (foo = 0; foo < SOUND_MIXER_NRDEVICES; foo++)
		FUNC1(foo, levels[foo]);

	FUNC3(0x04 | 0x01);
}