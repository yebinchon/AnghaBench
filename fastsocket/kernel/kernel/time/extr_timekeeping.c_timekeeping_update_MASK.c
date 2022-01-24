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
struct TYPE_2__ {int /*<<< orphan*/  mult; int /*<<< orphan*/  clock; int /*<<< orphan*/  wall_to_monotonic; int /*<<< orphan*/  xtime; scalar_t__ ntp_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(bool clearntp)
{
	if (clearntp) {
		timekeeper.ntp_error = 0;
		FUNC0();
	}
	FUNC1();
	FUNC2(&timekeeper.xtime, &timekeeper.wall_to_monotonic,
			 timekeeper.clock, timekeeper.mult);
}