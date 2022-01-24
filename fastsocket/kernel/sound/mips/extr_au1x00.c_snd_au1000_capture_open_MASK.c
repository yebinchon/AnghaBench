#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* runtime; TYPE_2__* private_data; TYPE_1__* pcm; } ;
struct snd_au1000 {TYPE_2__** stream; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buffer; struct snd_pcm_substream* substream; } ;
struct TYPE_4__ {struct snd_au1000* private_data; } ;

/* Variables and functions */
 size_t CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 int /*<<< orphan*/  snd_au1000_hw ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct snd_pcm_substream *substream)
{
	struct snd_au1000 *au1000 = substream->pcm->private_data;

	au1000->stream[CAPTURE]->substream = substream;
	au1000->stream[CAPTURE]->buffer = NULL;
	substream->private_data = au1000->stream[CAPTURE];
	substream->runtime->hw = snd_au1000_hw;
	return (FUNC0(substream->runtime, 0,
		SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates) < 0);
}