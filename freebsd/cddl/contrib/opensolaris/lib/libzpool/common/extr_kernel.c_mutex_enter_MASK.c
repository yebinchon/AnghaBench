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
struct TYPE_3__ {scalar_t__ initialized; void* m_owner; int /*<<< orphan*/  m_lock; } ;
typedef  TYPE_1__ kmutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* curthread ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(kmutex_t *mp)
{
	FUNC0(mp->initialized == B_TRUE);
	FUNC0(mp->m_owner != (void *)-1UL);
	FUNC0(mp->m_owner != curthread);
	FUNC1(FUNC2(&mp->m_lock) == 0);
	FUNC0(mp->m_owner == NULL);
	mp->m_owner = curthread;
}