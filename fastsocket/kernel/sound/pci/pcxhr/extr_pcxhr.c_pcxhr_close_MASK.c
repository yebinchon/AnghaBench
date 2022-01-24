#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcxhr {int /*<<< orphan*/  chip_idx; struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {int /*<<< orphan*/  number; TYPE_1__* runtime; } ;
struct pcxhr_stream {int /*<<< orphan*/ * substream; int /*<<< orphan*/  status; } ;
struct pcxhr_mgr {scalar_t__ ref_count_rate; int /*<<< orphan*/  setup_mutex; scalar_t__ sample_rate; } ;
struct TYPE_2__ {struct pcxhr_stream* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCXHR_STREAM_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 struct snd_pcxhr* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *subs)
{
	struct snd_pcxhr *chip = FUNC3(subs);
	struct pcxhr_mgr *mgr = chip->mgr;
	struct pcxhr_stream *stream = subs->runtime->private_data;

	FUNC0(&mgr->setup_mutex);

	FUNC4("pcxhr_close chip%d subs%d\n",
		    chip->chip_idx, subs->number);

	/* sample rate released */
	if (--mgr->ref_count_rate == 0) {
		mgr->sample_rate = 0;	/* the sample rate is no more locked */
		FUNC2(mgr, 0);	/* stop the DSP-timer */
	}

	stream->status    = PCXHR_STREAM_STATUS_FREE;
	stream->substream = NULL;

	FUNC1(&mgr->setup_mutex);

	return 0;
}