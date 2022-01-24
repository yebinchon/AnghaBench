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
struct snd_ca0106 {scalar_t__ port; scalar_t__ spdif_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_CONTROL ; 
 scalar_t__ GPIO ; 
 int /*<<< orphan*/  SPDIF_SELECT1 ; 
 int /*<<< orphan*/  SPDIF_SELECT2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int FUNC2 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct snd_ca0106 *emu)
{
	unsigned int val;

	if (emu->spdif_enable) {
		/* Digital */
		FUNC3(emu, SPDIF_SELECT1, 0, 0xf);
		FUNC3(emu, SPDIF_SELECT2, 0, 0x0b000000);
		val = FUNC2(emu, CAPTURE_CONTROL, 0) & ~0x1000;
		FUNC3(emu, CAPTURE_CONTROL, 0, val);
		val = FUNC0(emu->port + GPIO) & ~0x101;
		FUNC1(val, emu->port + GPIO);

	} else {
		/* Analog */
		FUNC3(emu, SPDIF_SELECT1, 0, 0xf);
		FUNC3(emu, SPDIF_SELECT2, 0, 0x000f0000);
		val = FUNC2(emu, CAPTURE_CONTROL, 0) | 0x1000;
		FUNC3(emu, CAPTURE_CONTROL, 0, val);
		val = FUNC0(emu->port + GPIO) | 0x101;
		FUNC1(val, emu->port + GPIO);
	}
}