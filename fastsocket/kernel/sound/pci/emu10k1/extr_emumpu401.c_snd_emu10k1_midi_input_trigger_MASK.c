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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_emu10k1_midi {int /*<<< orphan*/  rx_enable; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream, int up)
{
	struct snd_emu10k1 *emu;
	struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
	emu = midi->emu;
	if (FUNC0(!emu))
		return;

	if (up)
		FUNC2(emu, midi->rx_enable);
	else
		FUNC1(emu, midi->rx_enable);
}