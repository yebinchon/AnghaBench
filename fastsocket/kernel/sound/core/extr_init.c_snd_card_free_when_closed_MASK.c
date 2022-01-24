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
struct snd_card {int free_on_last_close; int /*<<< orphan*/  files_lock; int /*<<< orphan*/  files_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct snd_card *card)
{
	int free_now = 0;
	int ret = FUNC1(card);
	if (ret)
		return ret;

	FUNC3(&card->files_lock);
	if (FUNC0(&card->files_list))
		free_now = 1;
	else
		card->free_on_last_close = 1;
	FUNC4(&card->files_lock);

	if (free_now)
		FUNC2(card);
	return 0;
}