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
struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 

__attribute__((used)) static void FUNC1(void *b, int order)
{
	if (current->reclaim_state)
		current->reclaim_state->reclaimed_slab += 1 << order;
	FUNC0((unsigned long)b, order);
}