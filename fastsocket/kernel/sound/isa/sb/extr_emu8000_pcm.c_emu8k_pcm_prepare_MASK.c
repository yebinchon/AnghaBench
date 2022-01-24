#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int voices; int* panning; int dram_opened; TYPE_2__* emu; scalar_t__ buf_size; scalar_t__* loop_start; scalar_t__ offset; int /*<<< orphan*/  period_size; scalar_t__ period_pos; scalar_t__ last_ptr; scalar_t__ pitch; } ;
struct TYPE_7__ {int /*<<< orphan*/  emu; } ;
struct TYPE_6__ {int channels; int /*<<< orphan*/  period_size; scalar_t__ buffer_size; int /*<<< orphan*/  rate; struct snd_emu8k_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int LOOP_BLANK_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8k_pcm*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *subs)
{
	struct snd_emu8k_pcm *rec = subs->runtime->private_data;

	rec->pitch = 0xe000 + FUNC2(subs->runtime->rate);
	rec->last_ptr = 0;
	rec->period_pos = 0;

	rec->buf_size = subs->runtime->buffer_size;
	rec->period_size = subs->runtime->period_size;
	rec->voices = subs->runtime->channels;
	rec->loop_start[0] = rec->offset + LOOP_BLANK_SIZE;
	if (rec->voices > 1)
		rec->loop_start[1] = rec->loop_start[0] + rec->buf_size + LOOP_BLANK_SIZE;
	if (rec->voices > 1) {
		rec->panning[0] = 0xff;
		rec->panning[1] = 0x00;
	} else
		rec->panning[0] = 0x80;

	if (! rec->dram_opened) {
		int err, i, ch;

		FUNC6(rec->emu->emu);
		if ((err = FUNC3(rec->emu, rec->voices)) != 0)
			return err;
		rec->dram_opened = 1;

		/* clear loop blanks */
		FUNC5(rec->emu, 0);
		FUNC0(rec->emu, rec->offset);
		for (i = 0; i < LOOP_BLANK_SIZE; i++)
			FUNC1(rec->emu, 0);
		for (ch = 0; ch < rec->voices; ch++) {
			FUNC0(rec->emu, rec->loop_start[ch] + rec->buf_size);
			for (i = 0; i < LOOP_BLANK_SIZE; i++)
				FUNC1(rec->emu, 0);
		}
	}

	FUNC4(rec, 0);
	if (rec->voices > 1)
		FUNC4(rec, 1);
	return 0;
}