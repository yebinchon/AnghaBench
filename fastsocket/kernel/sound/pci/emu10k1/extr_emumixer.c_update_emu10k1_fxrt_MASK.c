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
struct snd_emu10k1 {scalar_t__ audigy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_FXRT1 ; 
 int /*<<< orphan*/  A_FXRT2 ; 
 int /*<<< orphan*/  FXRT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_emu10k1 *emu, int voice, unsigned char *route)
{
	if (emu->audigy) {
		FUNC3(emu, A_FXRT1, voice,
				      FUNC0(route));
		FUNC3(emu, A_FXRT2, voice,
				      FUNC1(route));
	} else {
		FUNC3(emu, FXRT, voice,
				      FUNC2(route));
	}
}