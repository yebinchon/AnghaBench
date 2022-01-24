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
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/ * function; } ;
struct rose_neigh {TYPE_1__ ftimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rose_ftimer_expiry ; 
 int /*<<< orphan*/  sysctl_rose_link_fail_timeout ; 

void FUNC3(struct rose_neigh *neigh)
{
	FUNC1(&neigh->ftimer);

	neigh->ftimer.data     = (unsigned long)neigh;
	neigh->ftimer.function = &rose_ftimer_expiry;
	neigh->ftimer.expires  =
		jiffies + FUNC2(sysctl_rose_link_fail_timeout);

	FUNC0(&neigh->ftimer);
}