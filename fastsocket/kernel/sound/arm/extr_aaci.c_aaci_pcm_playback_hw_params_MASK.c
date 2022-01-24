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
struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci_runtime {int cr; int fifosz; } ;
struct aaci {int fifosize; } ;
struct TYPE_2__ {struct aaci_runtime* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int CR_COMPACT ; 
 int CR_FEN ; 
 int CR_SZ16 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_pcm_substream*,struct aaci_runtime*,struct snd_pcm_hw_params*) ; 
 int* channels_to_txmask ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *params)
{
	struct aaci *aaci = substream->private_data;
	struct aaci_runtime *aacirun = substream->runtime->private_data;
	unsigned int channels = FUNC3(params);
	int ret;

	FUNC1(channels >= FUNC0(channels_to_txmask) ||
		!channels_to_txmask[channels]);

	ret = FUNC2(substream, aacirun, params);

	/*
	 * Enable FIFO, compact mode, 16 bits per sample.
	 * FIXME: double rate slots?
	 */
	if (ret >= 0) {
		aacirun->cr = CR_FEN | CR_COMPACT | CR_SZ16;
		aacirun->cr |= channels_to_txmask[channels];

		aacirun->fifosz	= aaci->fifosize * 4;
		if (aacirun->cr & CR_COMPACT)
			aacirun->fifosz >>= 1;
	}
	return ret;
}