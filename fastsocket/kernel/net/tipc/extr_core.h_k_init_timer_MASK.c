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
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct timer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct timer_list *timer, Handler routine,
				unsigned long argument)
{
	FUNC0("initializing timer %p\n", timer);
	FUNC1(timer, routine, argument);
}