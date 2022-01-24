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
typedef  scalar_t__ u16 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct davinci_runtime_data {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct davinci_runtime_data* private_data; } ;

/* Variables and functions */
 scalar_t__ DMA_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(unsigned lch, u16 ch_status, void *data)
{
	struct snd_pcm_substream *substream = data;
	struct davinci_runtime_data *prtd = substream->runtime->private_data;

	FUNC1("davinci_pcm: lch=%d, status=0x%x\n", lch, ch_status);

	if (FUNC6(ch_status != DMA_COMPLETE))
		return;

	if (FUNC3(substream)) {
		FUNC2(substream);

		FUNC4(&prtd->lock);
		FUNC0(substream);
		FUNC5(&prtd->lock);
	}
}