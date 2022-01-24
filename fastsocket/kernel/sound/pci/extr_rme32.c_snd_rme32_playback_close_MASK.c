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
struct rme32 {int wcreg; TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; scalar_t__ playback_periodsize; int /*<<< orphan*/ * playback_substream; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int RME32_WCR_ADAT ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct rme32* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct rme32 *rme32 = FUNC1(substream);
	int spdif = 0;

	FUNC2(&rme32->lock);
	rme32->playback_substream = NULL;
	rme32->playback_periodsize = 0;
	spdif = (rme32->wcreg & RME32_WCR_ADAT) == 0;
	FUNC3(&rme32->lock);
	if (spdif) {
		rme32->spdif_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
		FUNC0(rme32->card, SNDRV_CTL_EVENT_MASK_VALUE |
			       SNDRV_CTL_EVENT_MASK_INFO,
			       &rme32->spdif_ctl->id);
	}
	return 0;
}