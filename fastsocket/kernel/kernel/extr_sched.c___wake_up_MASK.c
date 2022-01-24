#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(wait_queue_head_t *q, unsigned int mode,
			int nr_exclusive, void *key)
{
	unsigned long flags;

	FUNC1(&q->lock, flags);
	FUNC0(q, mode, nr_exclusive, 0, key);
	FUNC2(&q->lock, flags);
}