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
struct usb_line6 {int max_packet_size; struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct MidiBuffer {int dummy; } ;
struct snd_line6_midi {int /*<<< orphan*/  midi_transmit_lock; int /*<<< orphan*/  midi_mask_transmit; struct MidiBuffer midibuf_out; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*,char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MidiBuffer*) ; 
 int FUNC3 (struct MidiBuffer*,unsigned char*,int) ; 
 scalar_t__ FUNC4 (struct MidiBuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MidiBuffer*,unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_line6*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_rawmidi_substream*,int) ; 
 int FUNC9 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct snd_rawmidi_substream *substream)
{
	struct usb_line6 *line6 = FUNC0(substream)->line6;
	struct snd_line6_midi *line6midi = line6->line6midi;
	struct MidiBuffer *mb = &line6midi->midibuf_out;
	unsigned long flags;
	unsigned char chunk[line6->max_packet_size];
	int req, done;

	FUNC10(&line6->line6midi->midi_transmit_lock, flags);

	for (;;) {
		req = FUNC6(FUNC2(mb), line6->max_packet_size);
		done = FUNC9(substream, chunk, req);

		if (done == 0)
			break;

#if DO_DUMP_MIDI_SEND
		line6_write_hexdump(line6, 's', chunk, done);
#endif
		FUNC5(mb, chunk, done);
		FUNC8(substream, done);
	}

	for (;;) {
		done = FUNC3(mb, chunk, line6->max_packet_size);

		if (done == 0)
			break;

		if (FUNC4(mb, line6midi->midi_mask_transmit))
			continue;

		FUNC7(line6, chunk, done);
	}

	FUNC11(&line6->line6midi->midi_transmit_lock, flags);
}