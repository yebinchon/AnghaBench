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
struct TYPE_2__ {scalar_t__ dbsz; } ;

/* Variables and functions */
 TYPE_1__ in ; 
 double FUNC0 () ; 
 scalar_t__ speed ; 
 int /*<<< orphan*/  FUNC1 (double) ; 

__attribute__((used)) static void
FUNC2(void)
{
	static double t_prev, t_usleep;
	double t_now, t_io, t_target;

	t_now = FUNC0();
	t_io = t_now - t_prev - t_usleep;
	t_target = (double)in.dbsz / (double)speed;
	t_usleep = t_target - t_io;
	if (t_usleep > 0)
		FUNC1(t_usleep * 1000000);
	else
		t_usleep = 0;
	t_prev = t_now;
}