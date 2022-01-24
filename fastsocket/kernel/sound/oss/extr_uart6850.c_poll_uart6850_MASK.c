#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int OPEN_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int uart6850_opened ; 
 TYPE_1__ uart6850_timer ; 

__attribute__((used)) static void FUNC5(unsigned long dummy)
{
	unsigned long flags;

	if (!(uart6850_opened & OPEN_READ))
		return;		/* Device has been closed */

	FUNC2(&lock,flags);
	if (FUNC1())
		FUNC4();

	uart6850_timer.expires = 1 + jiffies;
	FUNC0(&uart6850_timer);
	
	/*
	 *	Come back later
	 */

	FUNC3(&lock,flags);
}