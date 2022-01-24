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
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  offs_real; struct timespec wall_to_monotonic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC1 (struct timespec) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct timespec tmp, *wtm = &timekeeper.wall_to_monotonic;

	FUNC0(&tmp, -wtm->tv_sec, -wtm->tv_nsec);
	timekeeper.offs_real = FUNC1(tmp);
}