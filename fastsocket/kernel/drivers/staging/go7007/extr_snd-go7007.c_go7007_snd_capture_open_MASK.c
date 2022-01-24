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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct go7007_snd {int /*<<< orphan*/  lock; struct snd_pcm_substream* substream; } ;
struct go7007 {struct go7007_snd* snd_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  go7007_snd_capture_hw ; 
 struct go7007* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct go7007 *go = FUNC0(substream);
	struct go7007_snd *gosnd = go->snd_context;
	unsigned long flags;
	int r;

	FUNC1(&gosnd->lock, flags);
	if (gosnd->substream == NULL) {
		gosnd->substream = substream;
		substream->runtime->hw = go7007_snd_capture_hw;
		r = 0;
	} else
		r = -EBUSY;
	FUNC2(&gosnd->lock, flags);
	return r;
}