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
struct queue {int /*<<< orphan*/  queue; } ;
struct qitem {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qitem*) ; 
 struct qitem* FUNC2 (struct queue*) ; 

void
FUNC3(struct queue *queue)
{
	struct qitem *it;

	if (FUNC0(&queue->queue))
		return;

	it = FUNC2(queue);
	FUNC1(it);
	/* NOTREACHED */
}