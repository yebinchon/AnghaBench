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
struct k_itimer {int /*<<< orphan*/  it_clock; } ;
struct k_clock {int (* timer_del ) (struct k_itimer*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct k_clock* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct k_itimer*) ; 

__attribute__((used)) static inline int FUNC3(struct k_itimer *timer)
{
	struct k_clock *kc = FUNC1(timer->it_clock);

	if (FUNC0(!kc || !kc->timer_del))
		return -EINVAL;
	return kc->timer_del(timer);
}