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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL ; 
 int /*<<< orphan*/  HD64461_GPADR ; 
 int /*<<< orphan*/  HD64461_GPADR_SPEAKER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC2()) {
		u16 v = FUNC0(HD64461_GPADR);
		v &= ~HD64461_GPADR_SPEAKER;
		FUNC1(v, HD64461_GPADR);
	}

	FUNC3(CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL);
}