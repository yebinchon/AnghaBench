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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int buffer_bytes_max; int period_bytes_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {struct ichdev* private_data; TYPE_2__ hw; } ;
struct intel8x0 {scalar_t__ device_type; } ;
struct ichdev {TYPE_1__* pcm; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int /*<<< orphan*/  rates; } ;

/* Variables and functions */
 scalar_t__ DEVICE_SIS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 TYPE_2__ snd_intel8x0_stream ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*) ; 
 struct intel8x0* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, struct ichdev *ichdev)
{
	struct intel8x0 *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	ichdev->substream = substream;
	runtime->hw = snd_intel8x0_stream;
	runtime->hw.rates = ichdev->pcm->rates;
	FUNC1(runtime);
	if (chip->device_type == DEVICE_SIS) {
		runtime->hw.buffer_bytes_max = 64*1024;
		runtime->hw.period_bytes_max = 64*1024;
	}
	if ((err = FUNC0(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
		return err;
	runtime->private_data = ichdev;
	return 0;
}