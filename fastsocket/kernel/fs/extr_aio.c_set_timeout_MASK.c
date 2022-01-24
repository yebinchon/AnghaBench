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
struct timespec {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct aio_timeout {int timed_out; TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct timespec const*) ; 

__attribute__((used)) static inline void FUNC3(long start_jiffies, struct aio_timeout *to,
			       const struct timespec *ts)
{
	to->timer.expires = start_jiffies + FUNC2(ts);
	if (FUNC1(to->timer.expires, jiffies))
		FUNC0(&to->timer);
	else
		to->timed_out = 1;
}