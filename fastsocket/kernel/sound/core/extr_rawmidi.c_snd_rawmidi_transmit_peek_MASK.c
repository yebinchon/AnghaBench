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
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {unsigned char* buffer; int avail; int buffer_size; size_t hw_ptr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_rawmidi_substream *substream,
			      unsigned char *buffer, int count)
{
	unsigned long flags;
	int result, count1;
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	if (runtime->buffer == NULL) {
		FUNC1("snd_rawmidi_transmit_peek: output is not active!!!\n");
		return -EINVAL;
	}
	result = 0;
	FUNC2(&runtime->lock, flags);
	if (runtime->avail >= runtime->buffer_size) {
		/* warning: lowlevel layer MUST trigger down the hardware */
		goto __skip;
	}
	if (count == 1) {	/* special case, faster code */
		*buffer = runtime->buffer[runtime->hw_ptr];
		result++;
	} else {
		count1 = runtime->buffer_size - runtime->hw_ptr;
		if (count1 > count)
			count1 = count;
		if (count1 > (int)(runtime->buffer_size - runtime->avail))
			count1 = runtime->buffer_size - runtime->avail;
		FUNC0(buffer, runtime->buffer + runtime->hw_ptr, count1);
		count -= count1;
		result += count1;
		if (count > 0) {
			if (count > (int)(runtime->buffer_size - runtime->avail - count1))
				count = runtime->buffer_size - runtime->avail - count1;
			FUNC0(buffer + count1, runtime->buffer, count);
			result += count;
		}
	}
      __skip:
	FUNC3(&runtime->lock, flags);
	return result;
}