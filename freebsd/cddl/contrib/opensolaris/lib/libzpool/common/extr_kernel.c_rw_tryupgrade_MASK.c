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
struct TYPE_3__ {scalar_t__ initialized; void* rw_owner; } ;
typedef  TYPE_1__ krwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 

int
FUNC1(krwlock_t *rwlp)
{
	FUNC0(rwlp->initialized == B_TRUE);
	FUNC0(rwlp->rw_owner != (void *)-1UL);

	return (0);
}