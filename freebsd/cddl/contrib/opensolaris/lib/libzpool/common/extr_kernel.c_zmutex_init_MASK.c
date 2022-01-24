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
struct TYPE_3__ {int /*<<< orphan*/  m_lock; int /*<<< orphan*/  initialized; int /*<<< orphan*/ * m_owner; } ;
typedef  TYPE_1__ kmutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  USYNC_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(kmutex_t *mp)
{
	mp->m_owner = NULL;
	mp->initialized = B_TRUE;
	(void) FUNC0(&mp->m_lock, USYNC_THREAD, NULL);
}