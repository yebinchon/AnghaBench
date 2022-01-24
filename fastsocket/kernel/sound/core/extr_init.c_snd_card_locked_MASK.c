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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_card_mutex ; 
 int snd_cards_lock ; 

int FUNC2(int card)
{
	int locked;

	FUNC0(&snd_card_mutex);
	locked = snd_cards_lock & (1 << card);
	FUNC1(&snd_card_mutex);
	return locked;
}