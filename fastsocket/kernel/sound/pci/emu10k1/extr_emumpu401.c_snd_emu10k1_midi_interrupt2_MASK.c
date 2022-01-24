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
struct snd_emu10k1 {int /*<<< orphan*/  midi2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct snd_emu10k1 *emu, unsigned int status)
{
	FUNC0(emu, &emu->midi2, status);
}