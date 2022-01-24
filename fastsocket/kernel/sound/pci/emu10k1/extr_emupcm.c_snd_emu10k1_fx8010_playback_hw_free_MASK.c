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
struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {unsigned int channels; scalar_t__* etram; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; } ;

/* Variables and functions */
 scalar_t__ TANKMEMADDRREGBASE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_emu10k1* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC2(substream);
	struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
	unsigned int i;

	for (i = 0; i < pcm->channels; i++)
		FUNC0(emu, TANKMEMADDRREGBASE + 0x80 + pcm->etram[i], 0, 0);
	FUNC1(substream);
	return 0;
}