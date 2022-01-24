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
struct snd_card {int /*<<< orphan*/  files_list; int /*<<< orphan*/  shutdown_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct snd_card *card)
{
	int ret = FUNC1(card);
	if (ret)
		return ret;

	/* wait, until all devices are ready for the free operation */
	FUNC3(card->shutdown_sleep, FUNC0(&card->files_list));
	FUNC2(card);
	return 0;
}