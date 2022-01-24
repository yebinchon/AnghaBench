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
struct snd_midi_channel {int* control; } ;
struct TYPE_2__ {scalar_t__ midi_mode; } ;
struct snd_emux_port {TYPE_1__ chset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMUX_FX_CUTOFF ; 
 int /*<<< orphan*/  EMUX_FX_FLAG_ADD ; 
 int /*<<< orphan*/  EMUX_FX_FLAG_OFF ; 
#define  MIDI_CTL_CHAN_PRESSURE 134 
#define  MIDI_CTL_MSB_EXPRESSION 133 
#define  MIDI_CTL_MSB_MAIN_VOLUME 132 
#define  MIDI_CTL_MSB_MODWHEEL 131 
#define  MIDI_CTL_MSB_PAN 130 
#define  MIDI_CTL_PITCHBEND 129 
#define  MIDI_CTL_SOFT_PEDAL 128 
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ; 
 int SNDRV_EMUX_UPDATE_FMMOD ; 
 int SNDRV_EMUX_UPDATE_PAN ; 
 int SNDRV_EMUX_UPDATE_PITCH ; 
 int SNDRV_EMUX_UPDATE_VOLUME ; 
 scalar_t__ SNDRV_MIDI_MODE_XG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux_port*,struct snd_midi_channel*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emux_port*,struct snd_midi_channel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux_port*,struct snd_midi_channel*,int) ; 

void
FUNC4(void *p, int type, struct snd_midi_channel *chan)
{
	struct snd_emux_port *port;

	port = p;
	if (FUNC0(!port || !chan))
		return;

	switch (type) {
	case MIDI_CTL_MSB_MAIN_VOLUME:
	case MIDI_CTL_MSB_EXPRESSION:
		FUNC2(port, chan, SNDRV_EMUX_UPDATE_VOLUME);
		break;
		
	case MIDI_CTL_MSB_PAN:
		FUNC2(port, chan, SNDRV_EMUX_UPDATE_PAN);
		break;

	case MIDI_CTL_SOFT_PEDAL:
#ifdef SNDRV_EMUX_USE_RAW_EFFECT
		/* FIXME: this is an emulation */
		if (chan->control[type] >= 64)
			snd_emux_send_effect(port, chan, EMUX_FX_CUTOFF, -160,
				     EMUX_FX_FLAG_ADD);
		else
			snd_emux_send_effect(port, chan, EMUX_FX_CUTOFF, 0,
				     EMUX_FX_FLAG_OFF);
#endif
		break;

	case MIDI_CTL_PITCHBEND:
		FUNC2(port, chan, SNDRV_EMUX_UPDATE_PITCH);
		break;

	case MIDI_CTL_MSB_MODWHEEL:
	case MIDI_CTL_CHAN_PRESSURE:
		FUNC2(port, chan,
					SNDRV_EMUX_UPDATE_FMMOD |
					SNDRV_EMUX_UPDATE_FM2FRQ2);
		break;

	}

	if (port->chset.midi_mode == SNDRV_MIDI_MODE_XG) {
		FUNC3(port, chan, type);
	}
}