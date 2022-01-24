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
struct rt_mutex {int /*<<< orphan*/ * magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex*) ; 

void FUNC2(struct rt_mutex *lock)
{
	FUNC0(FUNC1(lock));
#ifdef CONFIG_DEBUG_RT_MUTEXES
	lock->magic = NULL;
#endif
}