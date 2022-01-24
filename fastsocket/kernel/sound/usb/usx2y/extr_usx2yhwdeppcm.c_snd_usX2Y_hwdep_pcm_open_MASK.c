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
struct snd_hwdep {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  USX2Y_STAT_CHIP_MMAP_PCM_URBS ; 
 TYPE_1__* FUNC0 (struct snd_card*) ; 
 int FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 

__attribute__((used)) static int FUNC3(struct snd_hwdep *hw, struct file *file)
{
	// we need to be the first 
	struct snd_card *card = hw->card;
	int err = FUNC1(card);
	if (0 == err)
		FUNC0(card)->chip_status |= USX2Y_STAT_CHIP_MMAP_PCM_URBS;
	FUNC2(card);
	return err;
}