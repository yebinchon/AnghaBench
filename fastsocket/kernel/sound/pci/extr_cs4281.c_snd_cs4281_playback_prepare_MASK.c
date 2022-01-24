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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cs4281_dma* private_data; } ;
struct cs4281_dma {int dummy; } ;
struct cs4281 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs4281*,struct cs4281_dma*,struct snd_pcm_runtime*,int /*<<< orphan*/ ,int) ; 
 struct cs4281* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct cs4281_dma *dma = runtime->private_data;
	struct cs4281 *chip = FUNC1(substream);

	FUNC2(&chip->reg_lock);
	FUNC0(chip, dma, runtime, 0, 1);
	FUNC3(&chip->reg_lock);
	return 0;
}