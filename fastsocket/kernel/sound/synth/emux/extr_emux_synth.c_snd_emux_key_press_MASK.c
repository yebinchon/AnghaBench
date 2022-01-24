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
struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {scalar_t__ state; int key; int velocity; struct snd_midi_channel* chan; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int /*<<< orphan*/  update; } ;
struct snd_emux {int max_voices; int /*<<< orphan*/  voice_lock; struct snd_emux_voice* voices; TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ SNDRV_EMUX_ST_ON ; 
 int /*<<< orphan*/  SNDRV_EMUX_UPDATE_VOLUME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux*,struct snd_emux_voice*,int /*<<< orphan*/ ) ; 

void
FUNC4(void *p, int note, int vel, struct snd_midi_channel *chan)
{
	int ch;
	struct snd_emux *emu;
	struct snd_emux_voice *vp;
	unsigned long flags;
	struct snd_emux_port *port;

	port = p;
	if (FUNC0(!port || !chan))
		return;

	emu = port->emu;
	if (FUNC0(!emu || !emu->ops.update))
		return;

	FUNC1(&emu->voice_lock, flags);
	for (ch = 0; ch < emu->max_voices; ch++) {
		vp = &emu->voices[ch];
		if (vp->state == SNDRV_EMUX_ST_ON &&
		    vp->chan == chan && vp->key == note) {
			vp->velocity = vel;
			FUNC3(emu, vp, SNDRV_EMUX_UPDATE_VOLUME);
		}
	}
	FUNC2(&emu->voice_lock, flags);
}