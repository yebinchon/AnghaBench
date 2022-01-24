#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {int key; scalar_t__ ontime; int /*<<< orphan*/  state; struct snd_midi_channel* chan; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (struct snd_emux_voice*) ;} ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_emux {int max_voices; int timer_active; int /*<<< orphan*/  voice_lock; TYPE_1__ ops; TYPE_2__ tlist; struct snd_emux_voice* voices; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_EMUX_ST_PENDING ; 
 int /*<<< orphan*/  SNDRV_EMUX_ST_RELEASED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emux_voice*) ; 

void
FUNC6(void *p, int note, int vel, struct snd_midi_channel *chan)
{
	int ch;
	struct snd_emux *emu;
	struct snd_emux_voice *vp;
	unsigned long flags;
	struct snd_emux_port *port;

	port = p;
	if (FUNC2(!port || !chan))
		return;

	emu = port->emu;
	if (FUNC2(!emu || !emu->ops.release))
		return;

	FUNC3(&emu->voice_lock, flags);
	for (ch = 0; ch < emu->max_voices; ch++) {
		vp = &emu->voices[ch];
		if (FUNC0(vp->state) &&
		    vp->chan == chan && vp->key == note) {
			vp->state = SNDRV_EMUX_ST_RELEASED;
			if (vp->ontime == jiffies) {
				/* if note-off is sent too shortly after
				 * note-on, emuX engine cannot produce the sound
				 * correctly.  so we'll release this note
				 * a bit later via timer callback.
				 */
				vp->state = SNDRV_EMUX_ST_PENDING;
				if (! emu->timer_active) {
					emu->tlist.expires = jiffies + 1;
					FUNC1(&emu->tlist);
					emu->timer_active = 1;
				}
			} else
				/* ok now release the note */
				emu->ops.release(vp);
		}
	}
	FUNC4(&emu->voice_lock, flags);
}