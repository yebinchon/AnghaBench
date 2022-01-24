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
struct hdsp {int playback_pid; TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; int /*<<< orphan*/ * playback_substream; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct hdsp* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct hdsp *hdsp = FUNC1(substream);

	FUNC2(&hdsp->lock);

	hdsp->playback_pid = -1;
	hdsp->playback_substream = NULL;

	FUNC3(&hdsp->lock);

	hdsp->spdif_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC0(hdsp->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &hdsp->spdif_ctl->id);
	return 0;
}