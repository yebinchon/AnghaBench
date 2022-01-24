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
struct TYPE_6__ {int queue_length; int /*<<< orphan*/  channels; struct snd_pcm_substream* substream; } ;
struct ua101 {int rate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  states; int /*<<< orphan*/  packets_per_second; TYPE_3__ playback; } ;
struct snd_pcm_substream {TYPE_2__* runtime; struct ua101* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  fifo_size; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALSA_CAPTURE_OPEN ; 
 int /*<<< orphan*/  ALSA_PLAYBACK_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ua101*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ua101*) ; 
 int FUNC6 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC7 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct ua101 *ua = substream->private_data;
	int err;

	ua->playback.substream = substream;
	err = FUNC4(ua, substream, ua->playback.channels);
	if (err < 0)
		return err;
	substream->runtime->hw.fifo_size =
		FUNC0(ua->rate * ua->playback.queue_length,
				  ua->packets_per_second);

	FUNC1(&ua->mutex);
	err = FUNC5(ua);
	if (err < 0)
		goto error;
	err = FUNC6(ua);
	if (err < 0) {
		if (!FUNC8(ALSA_CAPTURE_OPEN, &ua->states))
			FUNC7(ua);
		goto error;
	}
	FUNC3(ALSA_PLAYBACK_OPEN, &ua->states);
error:
	FUNC2(&ua->mutex);
	return err;
}