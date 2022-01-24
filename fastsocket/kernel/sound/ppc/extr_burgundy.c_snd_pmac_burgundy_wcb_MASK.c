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
struct snd_pmac {TYPE_1__* awacs; } ;
struct TYPE_2__ {int /*<<< orphan*/  codec_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pmac*) ; 

__attribute__((used)) static void
FUNC2(struct snd_pmac *chip, unsigned int addr,
		      unsigned int val)
{
	FUNC0(&chip->awacs->codec_ctrl, addr + 0x300000 + (val & 0xff));
	FUNC1(chip);
}