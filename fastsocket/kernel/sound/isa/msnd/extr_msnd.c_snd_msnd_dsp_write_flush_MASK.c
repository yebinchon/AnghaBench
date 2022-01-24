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
struct snd_msnd {int mode; int /*<<< orphan*/  flags; int /*<<< orphan*/  play_period_bytes; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  F_WRITEFLUSH ; 
 int /*<<< orphan*/  F_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct snd_msnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_msnd *chip)
{
	if (!(chip->mode & FMODE_WRITE) || !FUNC5(F_WRITING, &chip->flags))
		return;
	FUNC3(F_WRITEFLUSH, &chip->flags);
/*	interruptible_sleep_on_timeout(
		&chip->writeflush,
		get_play_delay_jiffies(&chip, chip->DAPF.len));*/
	FUNC0(F_WRITEFLUSH, &chip->flags);
	if (!FUNC4(current))
		FUNC2(
			FUNC1(chip, chip->play_period_bytes));
	FUNC0(F_WRITING, &chip->flags);
}