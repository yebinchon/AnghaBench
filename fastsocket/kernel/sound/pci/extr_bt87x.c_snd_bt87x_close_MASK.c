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
struct snd_bt87x {int /*<<< orphan*/  opened; int /*<<< orphan*/ * substream; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  reg_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_A_PWRDN ; 
 int /*<<< orphan*/  REG_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct snd_bt87x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_bt87x* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_bt87x *chip = FUNC3(substream);

	FUNC4(&chip->reg_lock);
	chip->reg_control |= CTL_A_PWRDN;
	FUNC2(chip, REG_GPIO_DMA_CTL, chip->reg_control);
	FUNC5(&chip->reg_lock);

	chip->substream = NULL;
	FUNC0(0, &chip->opened);
	FUNC1();
	return 0;
}