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
struct TYPE_4__ {int /*<<< orphan*/  (* outputc ) (int,unsigned char) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* hw_control ) (unsigned char,unsigned char*) ;int /*<<< orphan*/  (* set_instr ) (int /*<<< orphan*/ ,unsigned char,unsigned char) ;int /*<<< orphan*/  (* start_note ) (int /*<<< orphan*/ ,unsigned char,unsigned char,unsigned char) ;int /*<<< orphan*/  (* kill_note ) (int /*<<< orphan*/ ,unsigned char,int,unsigned char) ;} ;

/* Variables and functions */
#define  EV_CHN_COMMON 141 
#define  EV_CHN_VOICE 140 
#define  EV_SEQ_LOCAL 139 
#define  EV_SYSEX 138 
#define  EV_TIMING 137 
#define  SEQ_ECHO 136 
#define  SEQ_EXTENDED 135 
 scalar_t__ SEQ_MAX_QUEUE ; 
#define  SEQ_MIDIPUTC 134 
#define  SEQ_NOTEOFF 133 
#define  SEQ_NOTEON 132 
#define  SEQ_PGMCHANGE 131 
#define  SEQ_PRIVATE 130 
#define  SEQ_SYNCTIMER 129 
#define  SEQ_WAIT 128 
 int /*<<< orphan*/  TIMER_ARMED ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int max_synthdev ; 
 TYPE_2__** midi_devs ; 
 int /*<<< orphan*/ * midi_opened ; 
 int* midi_written ; 
 int num_midis ; 
 scalar_t__ output_threshold ; 
 long prev_event_time ; 
 int /*<<< orphan*/  prev_input_time ; 
 scalar_t__ qlen ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int seq_playing ; 
 int /*<<< orphan*/  seq_sleeper ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  seq_time ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned char) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char,unsigned char*) ; 
 TYPE_1__** synth_devs ; 
 int synth_open_mask ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(unsigned char *q)
{
	/*
	 * NOTE! This routine returns
	 *   0 = normal event played.
	 *   1 = Timer armed. Suspend playback until timer callback.
	 *   2 = MIDI output buffer full. Restore queue and suspend until timer
	 */
	unsigned int *delay;

	switch (q[0])
	{
		case SEQ_NOTEOFF:
			if (synth_open_mask & (1 << 0))
				if (synth_devs[0])
					synth_devs[0]->kill_note(0, q[1], 255, q[3]);
			break;

		case SEQ_NOTEON:
			if (q[4] < 128 || q[4] == 255)
				if (synth_open_mask & (1 << 0))
					if (synth_devs[0])
						synth_devs[0]->start_note(0, q[1], q[2], q[3]);
			break;

		case SEQ_WAIT:
			delay = (unsigned int *) q;	/*
							 * Bytes 1 to 3 are containing the *
							 * delay in 'ticks'
							 */
			*delay = (*delay >> 8) & 0xffffff;

			if (*delay > 0)
			{
				long time;

				seq_playing = 1;
				time = *delay;
				prev_event_time = time;

				FUNC1(time);

				if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
					FUNC13(&seq_sleeper);
				/*
				 * The timer is now active and will reinvoke this function
				 * after the timer expires. Return to the caller now.
				 */
				return 1;
			}
			break;

		case SEQ_PGMCHANGE:
			if (synth_open_mask & (1 << 0))
				if (synth_devs[0])
					synth_devs[0]->set_instr(0, q[1], q[2]);
			break;

		case SEQ_SYNCTIMER: 	/*
					 * Reset timer
					 */
			seq_time = jiffies;
			prev_input_time = 0;
			prev_event_time = 0;
			break;

		case SEQ_MIDIPUTC:	/*
					 * Put a midi character
					 */
			if (midi_opened[q[2]])
			{
				int dev;

				dev = q[2];

				if (dev < 0 || dev >= num_midis || midi_devs[dev] == NULL)
					break;

				if (!midi_devs[dev]->outputc(dev, q[1]))
				{
					/*
					 * Output FIFO is full. Wait one timer cycle and try again.
					 */

					seq_playing = 1;
					FUNC1(-1);
					return 2;
				}
				else
					midi_written[dev] = 1;
			}
			break;

		case SEQ_ECHO:
			FUNC4(q, 4);	/*
							 * Echo back to the process
							 */
			break;

		case SEQ_PRIVATE:
			if ((int) q[1] < max_synthdev)
				synth_devs[q[1]]->hw_control(q[1], q);
			break;

		case SEQ_EXTENDED:
			FUNC0(q);
			break;

		case EV_CHN_VOICE:
			FUNC3(q);
			break;

		case EV_CHN_COMMON:
			FUNC2(q);
			break;

		case EV_TIMING:
			if (FUNC7(q) == TIMER_ARMED)
			{
				return 1;
			}
			break;

		case EV_SEQ_LOCAL:
			FUNC5(q);
			break;

		case EV_SYSEX:
			FUNC6(q);
			break;

		default:;
	}
	return 0;
}