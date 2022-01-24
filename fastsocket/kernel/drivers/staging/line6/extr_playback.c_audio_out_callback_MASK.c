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
struct urb {TYPE_2__* iso_frame_desc; scalar_t__ context; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; } ;
struct snd_line6_pcm {scalar_t__ pos_out_done; int bytes_out; int period_out; int /*<<< orphan*/  lock_audio_out; int /*<<< orphan*/  unlink_urb_out; int /*<<< orphan*/  active_urb_out; TYPE_1__* properties; struct urb** urb_audio_out; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; scalar_t__ length; } ;
struct TYPE_3__ {int bytes_per_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int LINE6_ISO_BUFFERS ; 
 int LINE6_ISO_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_line6_pcm* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	int i, index, length = 0, shutdown = 0;
	unsigned long flags;

	struct snd_pcm_substream *substream = (struct snd_pcm_substream *)urb->context;
	struct snd_line6_pcm *line6pcm = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	/* find index of URB */
	for (index = LINE6_ISO_BUFFERS; index--;)
		if (urb == line6pcm->urb_audio_out[index])
			break;

	if (index < 0)
		return;  /* URB has been unlinked asynchronously */

	for (i = LINE6_ISO_PACKETS; i--;)
		length += urb->iso_frame_desc[i].length;

	FUNC3(&line6pcm->lock_audio_out, flags);
	line6pcm->pos_out_done += length / line6pcm->properties->bytes_per_frame;

	if (line6pcm->pos_out_done >= runtime->buffer_size)
		line6pcm->pos_out_done -= runtime->buffer_size;

	FUNC0(index, &line6pcm->active_urb_out);

	for (i = LINE6_ISO_PACKETS; i--;)
		if (urb->iso_frame_desc[i].status == -ESHUTDOWN) {
			shutdown = 1;
			break;
		}

	if (FUNC6(index, &line6pcm->unlink_urb_out))
		shutdown = 1;

	FUNC4(&line6pcm->lock_audio_out, flags);

	if (!shutdown) {
		FUNC5(substream);

		if ((line6pcm->bytes_out += length) >= line6pcm->period_out) {
			line6pcm->bytes_out -= line6pcm->period_out;
			FUNC1(substream);
		}
	}
}