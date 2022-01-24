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
struct snd_rawmidi_substream {scalar_t__ bytes; int /*<<< orphan*/  opened; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {unsigned char* buffer; int avail; int buffer_size; int hw_ptr; int /*<<< orphan*/  lock; int /*<<< orphan*/  sleep; int /*<<< orphan*/  tasklet; scalar_t__ event; scalar_t__ xruns; } ;

/* Variables and functions */
 int EBADFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct snd_rawmidi_substream *substream,
			const unsigned char *buffer, int count)
{
	unsigned long flags;
	int result = 0, count1;
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	if (!substream->opened)
		return -EBADFD;
	if (runtime->buffer == NULL) {
		FUNC1("snd_rawmidi_receive: input is not active!!!\n");
		return -EINVAL;
	}
	FUNC3(&runtime->lock, flags);
	if (count == 1) {	/* special case, faster code */
		substream->bytes++;
		if (runtime->avail < runtime->buffer_size) {
			runtime->buffer[runtime->hw_ptr++] = buffer[0];
			runtime->hw_ptr %= runtime->buffer_size;
			runtime->avail++;
			result++;
		} else {
			runtime->xruns++;
		}
	} else {
		substream->bytes += count;
		count1 = runtime->buffer_size - runtime->hw_ptr;
		if (count1 > count)
			count1 = count;
		if (count1 > (int)(runtime->buffer_size - runtime->avail))
			count1 = runtime->buffer_size - runtime->avail;
		FUNC0(runtime->buffer + runtime->hw_ptr, buffer, count1);
		runtime->hw_ptr += count1;
		runtime->hw_ptr %= runtime->buffer_size;
		runtime->avail += count1;
		count -= count1;
		result += count1;
		if (count > 0) {
			buffer += count1;
			count1 = count;
			if (count1 > (int)(runtime->buffer_size - runtime->avail)) {
				count1 = runtime->buffer_size - runtime->avail;
				runtime->xruns += count - count1;
			}
			if (count1 > 0) {
				FUNC0(runtime->buffer, buffer, count1);
				runtime->hw_ptr = count1;
				runtime->avail += count1;
				result += count1;
			}
		}
	}
	if (result > 0) {
		if (runtime->event)
			FUNC5(&runtime->tasklet);
		else if (FUNC2(substream))
			FUNC6(&runtime->sleep);
	}
	FUNC4(&runtime->lock, flags);
	return result;
}