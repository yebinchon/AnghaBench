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
struct buffer {int used; } ;
struct audio {int out_needed; int out_tail; int /*<<< orphan*/  dsp_lock; struct buffer* out; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  wflush; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct audio*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct audio *audio, unsigned needed)
{
	struct buffer *frame;
	unsigned long flags;

	FUNC3(&audio->dsp_lock, flags);
	if (!audio->running)
		goto done;

	if (needed && !audio->wflush) {
		/* We were called from the callback because the DSP
		 * requested more data.  Note that the DSP does want
		 * more data, and if a buffer was in-flight, mark it
		 * as available (since the DSP must now be done with
		 * it).
		 */
		audio->out_needed = 1;
		frame = audio->out + audio->out_tail;
		if (frame->used == 0xffffffff) {
			FUNC2("frame %d free\n", audio->out_tail);
			frame->used = 0;
			audio->out_tail ^= 1;
			FUNC5(&audio->write_wait);
		}
	}

	if (audio->out_needed) {
		/* If the DSP currently wants data and we have a
		 * buffer available, we will send it and reset
		 * the needed flag.  We'll mark the buffer as in-flight
		 * so that it won't be recycled until the next buffer
		 * is requested
		 */

		frame = audio->out + audio->out_tail;
		if (frame->used) {
			FUNC0(frame->used == 0xffffffff);
/*                      printk("frame %d busy\n", audio->out_tail); */
			FUNC1(audio, audio->out_tail,
						    frame->used);
			frame->used = 0xffffffff;
			audio->out_needed = 0;
		}
	}
 done:
	FUNC4(&audio->dsp_lock, flags);
}