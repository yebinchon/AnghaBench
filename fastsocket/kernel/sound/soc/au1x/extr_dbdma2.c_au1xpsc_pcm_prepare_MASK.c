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
struct au1xpsc_audio_dmadata {int /*<<< orphan*/  ddma_chan; } ;

/* Variables and functions */
 size_t PCM_RX ; 
 size_t FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_dmadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xpsc_audio_dmadata*) ; 
 struct au1xpsc_audio_dmadata** au1xpsc_audio_pcmdma ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct au1xpsc_audio_dmadata *pcd =
			au1xpsc_audio_pcmdma[FUNC0(substream)];

	FUNC3(pcd->ddma_chan);

	if (FUNC0(substream) == PCM_RX) {
		FUNC1(pcd);
		FUNC1(pcd);
	} else {
		FUNC2(pcd);
		FUNC2(pcd);
	}

	return 0;
}