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
struct snd_card {TYPE_1__* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;
typedef  TYPE_1__ snd_cx25821_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_card *card)
{
	snd_cx25821_card_t *chip = card->private_data;

	//snd_cx25821_free(chip);
	FUNC0(chip->card);
}