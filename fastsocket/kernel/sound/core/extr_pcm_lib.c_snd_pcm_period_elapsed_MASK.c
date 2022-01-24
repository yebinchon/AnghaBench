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
struct snd_pcm_substream {int /*<<< orphan*/  timer; scalar_t__ timer_running; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  fasync; int /*<<< orphan*/  (* transfer_ack_end ) (struct snd_pcm_substream*) ;int /*<<< orphan*/  (* transfer_ack_begin ) (struct snd_pcm_substream*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,unsigned long) ; 
 scalar_t__ FUNC5 (struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*) ; 

void FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime;
	unsigned long flags;

	if (FUNC0(substream))
		return;
	runtime = substream->runtime;

	if (runtime->transfer_ack_begin)
		runtime->transfer_ack_begin(substream);

	FUNC3(substream, flags);
	if (!FUNC2(substream) ||
	    FUNC5(substream, 1) < 0)
		goto _end;

	if (substream->timer_running)
		FUNC6(substream->timer, 1);
 _end:
	FUNC4(substream, flags);
	if (runtime->transfer_ack_end)
		runtime->transfer_ack_end(substream);
	FUNC1(&runtime->fasync, SIGIO, POLL_IN);
}