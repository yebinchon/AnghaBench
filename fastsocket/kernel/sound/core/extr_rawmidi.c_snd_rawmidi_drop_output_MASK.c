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
struct snd_rawmidi_runtime {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  avail; scalar_t__ hw_ptr; scalar_t__ appl_ptr; scalar_t__ drain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	FUNC0(substream, 0);
	runtime->drain = 0;
	FUNC1(&runtime->lock, flags);
	runtime->appl_ptr = runtime->hw_ptr = 0;
	runtime->avail = runtime->buffer_size;
	FUNC2(&runtime->lock, flags);
	return 0;
}