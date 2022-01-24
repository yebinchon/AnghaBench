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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct timer_list*,unsigned long) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct timer_list *timer, unsigned long msec)
{
	FUNC0("starting timer %p for %u\n", timer, msec);
	FUNC1(timer, jiffies + FUNC2(msec) + 1);
}