#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int playing; scalar_t__ capturing; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct snd_harmony {int /*<<< orphan*/  lock; TYPE_3__ sdma; TYPE_4__ st; TYPE_2__ gdma; TYPE_1__ pbuf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  HARMONY_PNXTADD ; 
 int /*<<< orphan*/  HARMONY_RNXTADD ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 132 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_harmony*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct snd_harmony* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct snd_pcm_substream *ss, int cmd)
{
	struct snd_harmony *h = FUNC6(ss);

	if (h->st.capturing)
		return -EBUSY;

	FUNC7(&h->lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		h->st.playing = 1;
		FUNC4(h, HARMONY_PNXTADD, h->pbuf.addr);
		FUNC4(h, HARMONY_RNXTADD, h->gdma.addr);
		FUNC3(h);
		FUNC1(h);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		h->st.playing = 0;
		FUNC2(h);
		FUNC4(h, HARMONY_PNXTADD, h->sdma.addr);
		FUNC0(h);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	default:
		FUNC8(&h->lock);
		FUNC5();
		return -EINVAL;
	}
	FUNC8(&h->lock);
	
	return 0;
}