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
struct snd_rawmidi_status {scalar_t__ xruns; int /*<<< orphan*/  avail; int /*<<< orphan*/  stream; } ;
struct snd_rawmidi_runtime {int /*<<< orphan*/  lock; scalar_t__ xruns; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_rawmidi_substream *substream,
				    struct snd_rawmidi_status * status)
{
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	FUNC0(status, 0, sizeof(*status));
	status->stream = SNDRV_RAWMIDI_STREAM_INPUT;
	FUNC1(&runtime->lock);
	status->avail = runtime->avail;
	status->xruns = runtime->xruns;
	runtime->xruns = 0;
	FUNC2(&runtime->lock);
	return 0;
}