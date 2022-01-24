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
struct snd_ymfpci_pcm {scalar_t__ output_rear; } ;
struct snd_ymfpci {scalar_t__ rear_opened; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_ymfpci_pcm* private_data; } ;

/* Variables and functions */
 struct snd_ymfpci* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ymfpci*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC0(substream);
	struct snd_ymfpci_pcm *ypcm = substream->runtime->private_data;

	FUNC2(&chip->reg_lock);
	if (ypcm->output_rear && chip->rear_opened > 0) {
		chip->rear_opened--;
		FUNC4(chip);
	}
	FUNC3(&chip->reg_lock);
	return FUNC1(substream);
}