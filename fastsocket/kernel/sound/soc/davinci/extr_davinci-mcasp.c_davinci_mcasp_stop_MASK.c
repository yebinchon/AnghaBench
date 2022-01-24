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
struct davinci_audio_dev {scalar_t__ base; scalar_t__ rxnumevt; scalar_t__ txnumevt; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MCASP_RFIFOCTL ; 
 scalar_t__ DAVINCI_MCASP_WFIFOCTL ; 
 int /*<<< orphan*/  FIFO_ENABLE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_audio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_audio_dev*) ; 

__attribute__((used)) static void FUNC3(struct davinci_audio_dev *dev, int stream)
{
	if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
		if (dev->txnumevt)	/* disable FIFO */
			FUNC0(dev->base + DAVINCI_MCASP_WFIFOCTL,
								FIFO_ENABLE);
		FUNC2(dev);
	} else {
		if (dev->rxnumevt)	/* disable FIFO */
			FUNC0(dev->base + DAVINCI_MCASP_RFIFOCTL,
								FIFO_ENABLE);
		FUNC1(dev);
	}
}