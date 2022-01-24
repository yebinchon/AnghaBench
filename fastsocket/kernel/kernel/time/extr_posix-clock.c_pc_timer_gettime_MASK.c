#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct posix_clock_desc {TYPE_2__* clk; } ;
struct k_itimer {int /*<<< orphan*/  it_clock; } ;
struct itimerspec {int dummy; } ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* timer_gettime ) (TYPE_2__*,struct k_itimer*,struct itimerspec*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct posix_clock_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_clock_desc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct k_itimer*,struct itimerspec*) ; 

__attribute__((used)) static void FUNC3(struct k_itimer *kit, struct itimerspec *ts)
{
	clockid_t id = kit->it_clock;
	struct posix_clock_desc cd;

	if (FUNC0(id, &cd))
		return;

	if (cd.clk->ops.timer_gettime)
		cd.clk->ops.timer_gettime(cd.clk, kit, ts);

	FUNC1(&cd);
}