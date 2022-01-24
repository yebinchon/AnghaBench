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
struct snd_rawmidi_substream {scalar_t__ stream; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail_min; scalar_t__ hw_ptr; scalar_t__ appl_ptr; scalar_t__ buffer_size; int /*<<< orphan*/ * buffer; scalar_t__ avail; int /*<<< orphan*/ * event; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  sleep; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_runtime*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct snd_rawmidi_runtime* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_rawmidi_input_event_tasklet ; 
 int /*<<< orphan*/  snd_rawmidi_output_trigger_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_rawmidi_substream *substream)
{
	struct snd_rawmidi_runtime *runtime;

	if ((runtime = FUNC3(sizeof(*runtime), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	FUNC4(&runtime->lock);
	FUNC0(&runtime->sleep);
	if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
		FUNC5(&runtime->tasklet,
			     snd_rawmidi_input_event_tasklet,
			     (unsigned long)substream);
	else
		FUNC5(&runtime->tasklet,
			     snd_rawmidi_output_trigger_tasklet,
			     (unsigned long)substream);
	runtime->event = NULL;
	runtime->buffer_size = PAGE_SIZE;
	runtime->avail_min = 1;
	if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
		runtime->avail = 0;
	else
		runtime->avail = runtime->buffer_size;
	if ((runtime->buffer = FUNC2(runtime->buffer_size, GFP_KERNEL)) == NULL) {
		FUNC1(runtime);
		return -ENOMEM;
	}
	runtime->appl_ptr = runtime->hw_ptr = 0;
	substream->runtime = runtime;
	return 0;
}