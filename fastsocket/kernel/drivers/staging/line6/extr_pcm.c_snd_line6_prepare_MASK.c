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
struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {scalar_t__ bytes_in; scalar_t__ pos_in_done; scalar_t__ bytes_out; scalar_t__ pos_out_done; scalar_t__ pos_out; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_PREPARED ; 
 struct snd_line6_pcm* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_line6_pcm*) ; 

int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_line6_pcm *line6pcm = FUNC0(substream);

	if (!FUNC1(BIT_PREPARED, &line6pcm->flags)) {
		FUNC3(line6pcm);
		line6pcm->pos_out = 0;
		line6pcm->pos_out_done = 0;

		FUNC2(line6pcm);
		line6pcm->bytes_out = 0;
		line6pcm->pos_in_done = 0;
		line6pcm->bytes_in = 0;
	}

	return 0;
}