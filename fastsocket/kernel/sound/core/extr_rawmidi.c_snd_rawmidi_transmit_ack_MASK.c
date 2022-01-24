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
struct snd_rawmidi_substream {int bytes; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail; int buffer_size; int hw_ptr; int /*<<< orphan*/  lock; int /*<<< orphan*/  sleep; scalar_t__ drain; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct snd_rawmidi_substream *substream, int count)
{
	unsigned long flags;
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	if (runtime->buffer == NULL) {
		FUNC1("snd_rawmidi_transmit_ack: output is not active!!!\n");
		return -EINVAL;
	}
	FUNC3(&runtime->lock, flags);
	FUNC0(runtime->avail + count > runtime->buffer_size);
	runtime->hw_ptr += count;
	runtime->hw_ptr %= runtime->buffer_size;
	runtime->avail += count;
	substream->bytes += count;
	if (count > 0) {
		if (runtime->drain || FUNC2(substream))
			FUNC5(&runtime->sleep);
	}
	FUNC4(&runtime->lock, flags);
	return count;
}