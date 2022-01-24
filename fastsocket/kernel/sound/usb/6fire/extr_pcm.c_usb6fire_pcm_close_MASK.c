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
struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/ * instance; } ;
struct TYPE_4__ {int /*<<< orphan*/  instance; } ;
struct TYPE_3__ {int /*<<< orphan*/  instance; } ;
struct pcm_runtime {int /*<<< orphan*/  stream_mutex; int /*<<< orphan*/  rate; TYPE_2__ capture; TYPE_1__ playback; scalar_t__ panic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rates ; 
 struct pcm_runtime* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pcm_substream* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcm_runtime*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC3(alsa_sub);
	struct pcm_substream *sub = FUNC6(alsa_sub);
	unsigned long flags;

	if (rt->panic)
		return 0;

	FUNC1(&rt->stream_mutex);
	if (sub) {
		/* deactivate substream */
		FUNC4(&sub->lock, flags);
		sub->instance = NULL;
		sub->active = false;
		FUNC5(&sub->lock, flags);

		/* all substreams closed? if so, stop streaming */
		if (!rt->playback.instance && !rt->capture.instance) {
			FUNC7(rt);
			rt->rate = FUNC0(rates);
		}
	}
	FUNC2(&rt->stream_mutex);
	return 0;
}