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
struct snd_pmac {int /*<<< orphan*/  reg_lock; TYPE_1__* awacs; } ;
struct TYPE_2__ {int /*<<< orphan*/  codec_stat; int /*<<< orphan*/  codec_ctrl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned
FUNC6(struct snd_pmac *chip, unsigned addr)
{
	unsigned val = 0;
	unsigned long flags;

	FUNC4(&chip->reg_lock, flags);

	FUNC1(&chip->awacs->codec_ctrl, addr + 0x100000);
	FUNC2(chip);
	FUNC3(chip);
	val += (FUNC0(&chip->awacs->codec_stat) >> 4) & 0xff;

	FUNC1(&chip->awacs->codec_ctrl, addr + 0x100100);
	FUNC2(chip);
	FUNC3(chip);
	val += ((FUNC0(&chip->awacs->codec_stat)>>4) & 0xff) <<8;

	FUNC1(&chip->awacs->codec_ctrl, addr + 0x100200);
	FUNC2(chip);
	FUNC3(chip);
	val += ((FUNC0(&chip->awacs->codec_stat)>>4) & 0xff) <<16;

	FUNC1(&chip->awacs->codec_ctrl, addr + 0x100300);
	FUNC2(chip);
	FUNC3(chip);
	val += ((FUNC0(&chip->awacs->codec_stat)>>4) & 0xff) <<24;

	FUNC5(&chip->reg_lock, flags);

	return val;
}