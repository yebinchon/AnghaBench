#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {size_t stream; scalar_t__ append; scalar_t__ opened; TYPE_2__* runtime; TYPE_1__* ops; scalar_t__ active_sensing; scalar_t__ use_count; } ;
struct snd_rawmidi {TYPE_3__* streams; } ;
struct TYPE_6__ {int /*<<< orphan*/  substream_opened; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* private_free ) (struct snd_rawmidi_substream*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* close ) (struct snd_rawmidi_substream*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 size_t SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_rawmidi_substream*) ; 

__attribute__((used)) static void FUNC7(struct snd_rawmidi *rmidi,
			    struct snd_rawmidi_substream *substream,
			    int cleanup)
{
	if (--substream->use_count)
		return;

	if (cleanup) {
		if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
			FUNC1(substream, 0);
		else {
			if (substream->active_sensing) {
				unsigned char buf = 0xfe;
				/* sending single active sensing message
				 * to shut the device up
				 */
				FUNC2(substream, &buf, 1);
			}
			if (FUNC0(substream) == -ERESTARTSYS)
				FUNC3(substream, 0);
		}
	}
	substream->ops->close(substream);
	if (substream->runtime->private_free)
		substream->runtime->private_free(substream);
	FUNC4(substream);
	substream->opened = 0;
	substream->append = 0;
	rmidi->streams[substream->stream].substream_opened--;
}