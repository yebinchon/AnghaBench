#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_mixart {TYPE_2__* mgr; } ;
struct mixart_stream {TYPE_4__* pipe; } ;
struct TYPE_7__ {int references; } ;
struct TYPE_6__ {int ref_count_rate; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_5__ {int /*<<< orphan*/  rate; struct mixart_stream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct snd_mixart* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *subs)
{
	struct snd_mixart *chip = FUNC2(subs);
	struct mixart_stream *stream = subs->runtime->private_data;

	/* TODO de façon non bloquante, réappliquer les hw_params (rate, bits, codec) */

	FUNC3("snd_mixart_prepare\n");

	FUNC1(chip->mgr);

	/* only the first stream can choose the sample rate */
	/* the further opened streams will be limited to its frequency (see open) */
	if(chip->mgr->ref_count_rate == 1)
		chip->mgr->sample_rate = subs->runtime->rate;

	/* set the clock only once (first stream) on the same pipe */
	if(stream->pipe->references == 1) {
		if( FUNC0(chip->mgr, stream->pipe, subs->runtime->rate) )
			return -EINVAL;
	}

	return 0;
}