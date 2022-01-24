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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct edmacc_param {int dummy; } ;
struct davinci_runtime_data {int /*<<< orphan*/  master_lch; int /*<<< orphan*/  slave_lch; scalar_t__ period; } ;
struct TYPE_2__ {struct davinci_runtime_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct edmacc_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct edmacc_param*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct davinci_runtime_data *prtd = substream->runtime->private_data;
	struct edmacc_param temp;

	prtd->period = 0;
	FUNC0(substream);

	/* Copy self-linked parameter RAM entry into master channel */
	FUNC1(prtd->slave_lch, &temp);
	FUNC2(prtd->master_lch, &temp);
	FUNC0(substream);

	return 0;
}