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
struct snd_seq_timer {unsigned int skew; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SKEW_BASE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_seq_timer *tmr, unsigned int skew,
			   unsigned int base)
{
	unsigned long flags;

	if (FUNC0(!tmr))
		return -EINVAL;

	/* FIXME */
	if (base != SKEW_BASE) {
		FUNC1("invalid skew base 0x%x\n", base);
		return -EINVAL;
	}
	FUNC2(&tmr->lock, flags);
	tmr->skew = skew;
	FUNC3(&tmr->lock, flags);
	return 0;
}