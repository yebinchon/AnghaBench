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
 int HZ ; 
 scalar_t__ FUNC0 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (long) ; 

__attribute__((used)) static void
FUNC2(int msec)
{
	unsigned long   tmo;
	signed long     tmo2;

	if (FUNC0())
		return;

	tmo = jiffies + (msec * HZ) / 1000;
	for (;;) {
		tmo2 = tmo - jiffies;
		if (tmo2 <= 0)
			break;
		FUNC1(tmo2);
	}
}