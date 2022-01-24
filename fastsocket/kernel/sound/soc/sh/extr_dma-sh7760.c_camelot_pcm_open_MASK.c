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
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int txid; struct snd_pcm_substream* tx_ss; struct snd_pcm_substream* rx_ss; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct camelot_pcm* cam_pcm_data ; 
 int /*<<< orphan*/  camelot_pcm_hardware ; 
 int /*<<< orphan*/  camelot_rxdma ; 
 int /*<<< orphan*/  camelot_txdma ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct camelot_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];
	int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;
	int ret, dmairq;

	FUNC2(substream, &camelot_pcm_hardware);

	/* DMABRG buffer half/full events */
	dmairq = (recv) ? cam->txid + 2 : cam->txid;
	if (recv) {
		cam->rx_ss = substream;
		ret = FUNC0(dmairq, camelot_rxdma, cam);
		if (FUNC3(ret)) {
			FUNC1("audio unit %d irqs already taken!\n",
			     rtd->dai->cpu_dai->id);
			return -EBUSY;
		}
		(void)FUNC0(dmairq + 1,camelot_rxdma, cam);
	} else {
		cam->tx_ss = substream;
		ret = FUNC0(dmairq, camelot_txdma, cam);
		if (FUNC3(ret)) {
			FUNC1("audio unit %d irqs already taken!\n",
			     rtd->dai->cpu_dai->id);
			return -EBUSY;
		}
		(void)FUNC0(dmairq + 1, camelot_txdma, cam);
	}
	return 0;
}