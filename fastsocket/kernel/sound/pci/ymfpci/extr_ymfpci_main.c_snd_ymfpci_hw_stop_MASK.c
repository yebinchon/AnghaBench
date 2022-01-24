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
struct snd_ymfpci {scalar_t__ start_count; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  interrupt_sleep; int /*<<< orphan*/  interrupt_sleep_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  YDSXGR_STATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_ymfpci *chip)
{
	unsigned long flags;
	long timeout = 1000;

	FUNC4(&chip->reg_lock, flags);
	if (--chip->start_count > 0)
		goto __end;
	FUNC3(chip, YDSXGR_MODE,
			  FUNC2(chip, YDSXGR_MODE) & ~3);
	while (timeout-- > 0) {
		if ((FUNC2(chip, YDSXGR_STATUS) & 2) == 0)
			break;
	}
	if (FUNC0(&chip->interrupt_sleep_count)) {
		FUNC1(&chip->interrupt_sleep_count, 0);
		FUNC6(&chip->interrupt_sleep);
	}
      __end:
      	FUNC5(&chip->reg_lock, flags);
}